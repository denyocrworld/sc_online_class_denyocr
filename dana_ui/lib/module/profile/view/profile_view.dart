import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: controller.index,
            children: const [
              ProfilePersonalView(),
              ProfileBusinessView(),
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SafeArea(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 20.0,
                ),
                width: 200.0,
                height: 40,
                padding: const EdgeInsets.all(4.0),
                decoration: const BoxDecoration(
                  color: Color(0xff0d79c4),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      12.0,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => controller.updateIndex(0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 8.0,
                          ),
                          decoration: BoxDecoration(
                            color: controller.index == 0
                                ? const Color(0xff4aacf3)
                                : Colors.transparent,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Personal",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => controller.updateIndex(1),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 8.0,
                          ),
                          decoration: BoxDecoration(
                            color: controller.index == 1
                                ? const Color(0xff4aacf3)
                                : Colors.transparent,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Business",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
