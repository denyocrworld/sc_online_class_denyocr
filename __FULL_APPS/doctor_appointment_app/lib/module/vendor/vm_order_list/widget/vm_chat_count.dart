import 'package:badges/badges.dart' as b;
import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class VmChatCount extends StatelessWidget {
  const VmChatCount({super.key});

  @override
  Widget build(BuildContext context) {
    return FireStreamDocument(
      stream: FirebaseFirestore.instance
          .collection(collection.userDataCollection)
          .doc(AppSession.userId)
          .snapshots(
            includeMetadataChanges: true,
          ),
      onSnapshot: (documentSnapshot) {
        var data = documentSnapshot.data() as Map<String, dynamic>;
        var unreadMessageCount = 0;
        unreadMessageCount = data["unread_message_count"] ?? 0;

        return b.Badge(
          badgeContent: Text('$unreadMessageCount'),
          showBadge: unreadMessageCount > 0,
          child: const Icon(
            Icons.chat,
          ),
        );
      },
    );
  }
}
