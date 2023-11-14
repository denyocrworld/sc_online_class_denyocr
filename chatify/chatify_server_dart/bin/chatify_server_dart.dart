import 'dart:io';
import 'dart:async';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_websocket/shelf_websocket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:sqlite3/sqlite3.dart';

void main() async {
  final db = sqlite3.open('./chat.db');
  await createTable(db);

  final handler = const Pipeline()
      .addMiddleware(webSocketHandler(handleWebSocket))
      .addHandler(_chatHandler);

  final server = await io.serve(handler, 'localhost', 8080);
  print('Server berjalan di port ${server.port}');
}

Future<void> createTable(Database db) async {
  await db.execute('''
    CREATE TABLE IF NOT EXISTS messages (
      id TEXT PRIMARY KEY,
      participants TEXT,
      message TEXT,
      attachment_url TEXT,
      sender_id TEXT
    )
  ''');
  print('Tabel pesan dibuat atau sudah ada.');
}

Response _chatHandler(Request request) {
  return Response.ok(File('index.html').readAsStringSync(), headers: {'content-type': 'text/html'});
}

Future<void> handleWebSocket(WebSocketChannel webSocket) async {
  final user = webSocket.protocol;
  final channel = IOWebSocketChannel(webSocket);

  sendChatHistory(user, channel);

  await for (final message in channel.stream) {
    final parsedMessage = Map<String, dynamic>.from(json.decode(message));
    final participants = '${parsedMessage['sender_id']}-${parsedMessage['receiver_id']}';

    final userMessage = {
      'id': uuid.v4(),
      'participants': participants,
      'message': parsedMessage['message'],
      'attachment_url': parsedMessage['attachment_url'],
      'sender_id': parsedMessage['sender_id'],
      'receiver_id': parsedMessage['receiver_id'],
    };

    saveMessage(userMessage);
    broadcastMessage(userMessage);
  }
}

void sendChatHistory(String user, WebSocketChannel channel) {
  final db = sqlite3.open('./chat.db');
  final selectQuery = 'SELECT * FROM messages WHERE participants LIKE ?';
  final searchPattern = '%$user%';

  final results = db.select(selectQuery, [searchPattern]);
  for (final row in results) {
    channel.sink.add(json.encode(row));
  }
}

void saveMessage(Map<String, dynamic> userMessage) {
  final db = sqlite3.open('./chat.db');
  final insertQuery = '''
    INSERT INTO messages (id, participants, message, attachment_url, sender_id)
    VALUES (?, ?, ?, ?, ?)
  ''';
  db.execute(
    insertQuery,
    [userMessage['id'], userMessage['participants'], userMessage['message'], userMessage['attachment_url'], userMessage['sender_id']],
  );
}

void broadcastMessage(Map<String, dynamic> userMessage) {
  final server = ShelfWebSocket.server((webSocket) {
    final user = webSocket.protocol;
    final channel = IOWebSocketChannel(webSocket);

    if (userMessage['participants'].contains(user)) {
      channel.sink.add(json.encode(userMessage));
    }
  });
}

