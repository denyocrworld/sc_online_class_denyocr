import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  final controller = Get.put(ChatController());

  ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<ChatController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Your Chat"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: FireStream(
              stream: FirebaseFirestore.instance
                  .collection(collection.chatListCollection)
                  .doc(AppSession.isVendorOwner
                      ? AppSession.userId
                      : AppSession.userId)
                  .collection("chat_with")
                  .orderBy("updated_at", descending: true)
                  .snapshots(
                    includeMetadataChanges: true,
                  ),
              onSnapshot: (querySnapshot) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: querySnapshot.docs.length,
                  itemBuilder: (context, index) {
                    var item = querySnapshot.docs[index].data()
                        as Map<String, dynamic>;
                    var docId = querySnapshot.docs[index].id;
                    item["id"] = docId;

                    // return Container(
                    //   child: Column(
                    //     children: [
                    //       Text("${item["user_id"]}"),
                    //       Text("${item["vendor_id"]}"),
                    //     ],
                    //   ),
                    // );
                    return UserChatListItem(
                      userId: item["user_id"],
                      vendorId: item["vendor_id"],
                      unreadMessageCount: item["unread_message_count"],
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
