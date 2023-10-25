
import 'package:flutter/material.dart';
import 'package:chatify_client/core.dart';
import '../controller/chat_list_controller.dart';

class ChatListView extends StatefulWidget {
    const ChatListView({Key? key}) : super(key: key);

    Widget build(context, ChatListController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("ChatList"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
        ),
    );
    }

    @override
    State<ChatListView> createState() => ChatListController();
}
    