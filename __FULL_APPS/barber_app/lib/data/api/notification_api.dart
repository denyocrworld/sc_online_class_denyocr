import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class NotificationApi {
  static createNotificationFor({
    required String targetUserId,
    required String title,
    required String message,
  }) async {
    await FirebaseFirestore.instance
        .collection(collection.userDataCollection)
        .doc(targetUserId)
        .update({
      "unread_notification_count": FieldValue.increment(1),
    });

    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10,
        channelKey: 'basic_channel',
        title: title,
        body: message,
        displayOnBackground: true,
        displayOnForeground: true,
      ),
    );

    userCollection.collection("notification").add({
      "title": title,
      "body": message,
      "created_at": Timestamp.now(),
    });
  }

  static initialize() async {
    await AwesomeNotifications()
        .initialize('resource://drawable/res_app_icon', [
      // await AwesomeNotifications().initialize('resource://mipmap-xxxhdpi/launcher_icon.png', [
      NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for basic tests',
          defaultColor: const Color(0xFF9D50DD),
          ledColor: Colors.white)
    ]);

    var isAllowed = await AwesomeNotifications().isNotificationAllowed();
    if (!isAllowed) {
      // Insert here your friendly dialog box before call the request method
      // This is very important to not harm the user experience
      AwesomeNotifications().requestPermissionToSendNotifications();
    }
  }
}
