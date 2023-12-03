import 'dart:developer';

import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class AdmThemeView extends StatelessWidget {
  final controller = Get.put(AdmThemeController());

  AdmThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<AdmThemeController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Themes"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "${colorPalettes.length} Themes",
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Scrollbar(
            trackVisibility: true,
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Wrap(
                    children: List.generate(
                      colorPalettes.length,
                      (index) {
                        var item = colorPalettes[index];
                        return InkWell(
                          onTap: () async {
                            await AdminSettingApi.setAppThemeIndex(index);

                            log("Change Themes: $item");
                            Get.changeTheme(
                              Get.theme.getCustomTheme(
                                customColorSet: item,
                              ),
                            );
                            controller.update();
                          },
                          child: Container(
                            width: Get.width / 2.6,
                            margin: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
                                  child: Column(
                                    children: [
                                      Container(
                                        color: Color(item[0]),
                                        height: 70.0,
                                      ),
                                      Container(
                                        color: Color(item[1]),
                                        height: 40.0,
                                      ),
                                      Container(
                                        color: Color(item[2]),
                                        height: 40.0,
                                      ),
                                      Container(
                                        color: Color(item[3]),
                                        height: 40.0,
                                      ),
                                      Container(
                                        color: Color(item[4]),
                                        height: 20.0,
                                      ),
                                      Container(
                                        color: Color(item[5]),
                                        height: 20.0,
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 10,
                                  child: CircleAvatar(
                                    radius: 12.0,
                                    backgroundColor: Colors.orange,
                                    child: Text(
                                      "${index + 1}",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
