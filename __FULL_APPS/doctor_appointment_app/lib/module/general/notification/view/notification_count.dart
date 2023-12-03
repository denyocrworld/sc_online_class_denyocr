import 'package:badges/badges.dart' as b;
import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class NotificationCount extends StatelessWidget {
  const NotificationCount({super.key});

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
        var unreadNotificationCount = data["unread_notification_count"] ?? 0;

        return b.Badge(
          badgeContent: Text('$unreadNotificationCount'),
          showBadge: unreadNotificationCount > 0,
          child: const Icon(
            Icons.notifications,
          ),
        );
      },
    );
  }
}
