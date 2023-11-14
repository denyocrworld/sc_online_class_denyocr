import 'dart:convert';

import 'package:chatify_client/service/auth_service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:chatify_client/core.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import '../view/chat_detail_view.dart';

class ChatDetailController extends State<ChatDetailView> {
  static late ChatDetailController instance;
  late ChatDetailView view;

  @override
  void initState() {
    instance = this;

    var userId = AuthService.id;
    var userTargetId = widget.user["id"];
    channel = channel = IOWebSocketChannel.connect(
      'ws://localhost:8080/ws/$userId/$userTargetId',
    );

    listenMessage();
    super.initState();
  }

  @override
  void dispose() {
    channel.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  late WebSocketChannel channel;

  List messages = [];
  TextEditingController messageTextEditingController = TextEditingController();
  String? imageUrl;
  listenMessage() {
    channel.stream.listen((jsonString) {
      messages.add(jsonDecode(jsonString));
      setState(() {});
    });
  }

  sendMessage(String message) {
    channel.sink.add(jsonEncode({
      "id": 1001,
      "name": "Deny",
      "message": message,
      "url": imageUrl,
    }));
    messageTextEditingController.clear();
    imageUrl = null;
    setState(() {});
  }
}
