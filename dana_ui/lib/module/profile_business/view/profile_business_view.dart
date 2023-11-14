
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../controller/profile_business_controller.dart';

class ProfileBusinessView extends StatefulWidget {
    const ProfileBusinessView({Key? key}) : super(key: key);

    Widget build(context, ProfileBusinessController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("ProfileBusiness"),
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
    State<ProfileBusinessView> createState() => ProfileBusinessController();
}
    