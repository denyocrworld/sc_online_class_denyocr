import 'dart:io';
import 'dart:async';

Future<void> main() async {
  // Direktori tempat model-model berada
  const modelsDirectoryPath = 'app/Models';

  // Membuat instance dari direktori
  final modelsDirectory = Directory(modelsDirectoryPath);

  // Memeriksa apakah direktori tersebut ada
  if (!await modelsDirectory.exists()) {
    print('Direktori tidak ditemukan: $modelsDirectoryPath');
    return;
  }

  // Membaca semua entitas dalam direktori Models
  final List<FileSystemEntity> models = await modelsDirectory.list().toList();

  // Membuat atau membersihkan isi file query.txt
  final File queryFile = File('query.txt');
  await queryFile.writeAsString('');

  // Iterasi untuk setiap model dan menambahkannya ke dalam file query.txt
  for (final model in models) {
    if (model is File) {
      String contents = await model.readAsString();
      contents = removeCommentsAndEmptyLines(contents);
      await queryFile.writeAsString(contents, mode: FileMode.append);
      await queryFile.writeAsString('\n\n', mode: FileMode.append); // Menambahkan spasi antar model
    }
  }

  print('Semua model telah digabungkan ke dalam file query.txt tanpa komentar dan baris kosong.');
}

String removeCommentsAndEmptyLines(String code) {
  // Menghapus komentar blok
  final blockComments = RegExp(r'/\*.*?\*/', dotAll: true);
  code = code.replaceAll(blockComments, '');

  // Menghapus komentar baris
  final lineComments = RegExp(r'//.*');
  code = code.split('\n').map((line) => line.replaceAll(lineComments, '')).join('\n');

  // Menghapus baris kosong
  final emptyLines = RegExp(r'^\s*$\n', multiLine: true);
  code = code.replaceAll(emptyLines, '');

  return code;
}
