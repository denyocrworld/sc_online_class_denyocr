import 'dart:math';

import 'package:chatify_client/service/auth_service/auth_service.dart';
import 'package:chatify_client/shared/widget/image_picker/attachment_picker.dart';
import 'package:chatify_client/shared/widget/image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:chatify_client/core.dart';
import '../controller/chat_detail_controller.dart';

class ChatDetailView extends StatefulWidget {
  final Map user;
  const ChatDetailView({
    Key? key,
    required this.user,
  }) : super(key: key);

  Widget build(context, ChatDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("${user["name"]}"),
        actions: const [],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: controller.messages.length,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                var item = controller.messages[index];
                bool isMe = item["id"] == AuthService.id;
                return Container(
                  margin: const EdgeInsets.only(
                    bottom: 12.0,
                  ),
                  child: Row(
                    mainAxisAlignment:
                        isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.6,
                        ),
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: isMe ? Colors.grey[400] : Colors.green[300],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${item["message"]}",
                              style: TextStyle(
                                color: isMe ? Colors.grey[800] : Colors.white,
                              ),
                            ),
                            if (item["url"] != null)
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 6.0,
                                ),
                                height: 120.0,
                                width: 160.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      item["url"],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      8.0,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller.messageTextEditingController,
                    onSubmitted: (text) {
                      controller.sendMessage(text);
                    },
                  ),
                ),
                Builder(builder: (context) {
                  return QAttachmentPicker(
                    key: Key("${Random().nextInt(1000)}"),
                    label: "Photo",
                    value: null,
                    onChanged: (value) {
                      controller.imageUrl = value;
                    },
                  );
                }),
                IconButton(
                  onPressed: () {
                    controller.sendMessage(
                        controller.messageTextEditingController.text);
                  },
                  icon: const Icon(
                    Icons.send,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<ChatDetailView> createState() => ChatDetailController();
}
