import 'package:flutter/material.dart';
import 'package:login_save_token_dan_user_data/core.dart';
import 'package:login_save_token_dan_user_data/service/auth_service/auth_service.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          IconButton(
            onPressed: () => controller.logout(),
            icon: const Icon(
              Icons.logout,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 32.0,
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/S32HNjD/no-image.jpg",
                ),
              ),
              Text(
                "${AuthService.currentUser?.name}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${AuthService.currentUser?.email}",
                style: const TextStyle(
                  fontSize: 14.0,
                ),
              ),
              const Divider(),
              Text(
                "User Token:\n${AuthService.token}",
                style: const TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
