import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/util/animation/animation.dart';
import '../controller/user_profile_controller.dart';

class UserProfileView extends StatefulWidget {
  UserProfileView({Key? key}) : super(key: key);

  Widget build(context, UserProfileController controller) {
    controller.view = this;
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: Key("${Random().nextInt(10000)}"),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text("Profile"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () => controller.logout(),
            icon: const Icon(
              Icons.logout,
              size: 24.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.36,
                decoration: BoxDecoration(
                  color: primaryColor,
                ),
                child: SafeArea(
                  child: LayoutBuilder(builder: (context, constraint) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: constraint.biggest.height * 0.3,
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ).aml,
                        Text(
                          "Deny Ocr",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ).amr,
                        Text(
                          "demo@gmail.com",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ).amb,
                      ],
                    );
                  }),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(Icons.privacy_tip),
                      minLeadingWidth: 0.0,
                      title: Text("Privacy policy"),
                      trailing: Icon(
                        Icons.chevron_right,
                        size: 24.0,
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.privacy_tip),
                      minLeadingWidth: 0.0,
                      title: Text("FAQ"),
                      trailing: Icon(
                        Icons.chevron_right,
                        size: 24.0,
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.privacy_tip),
                      minLeadingWidth: 0.0,
                      title: Text("TOS"),
                      trailing: Icon(
                        Icons.chevron_right,
                        size: 24.0,
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.help),
                      minLeadingWidth: 0.0,
                      title: Text("Help centre"),
                      trailing: Icon(
                        Icons.chevron_right,
                        size: 24.0,
                      ),
                    ),
                  ],
                ).amz,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UserProfileView> createState() => UserProfileController();
}
