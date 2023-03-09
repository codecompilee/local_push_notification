import 'package:flutter/material.dart';
import 'package:local_notification_flutter/notification_manager/notification_manager.dart';
import 'package:local_notification_flutter/utils/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Local Notification"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
              onPressed: () {
                NotificationManager().simpleNotificationShow();
              },
              title: "Simple Notification"),
          const SizedBox(height: 30),
          CustomButton(
              onPressed: () {
                NotificationManager().bigPictureNotificationShow();
              },
              title: "Big Picture Notification"),
                const SizedBox(height: 30),
          CustomButton(
              onPressed: () {
                NotificationManager().multipleNotificationShow();
              },
              title: "Multiple Notification")
        ],
      ),
    );
  }
}
