import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final controller = Get.put(LoginController());

  LoginView({super.key});

  getLogo() {
    if (config.logo.contains("http")) {
      return ImageIcon(
        NetworkImage(config.logo),
        color: Colors.white,
        size: 160.0,
      );
    } else {
      return ImageIcon(
        AssetImage(config.logo),
        color: Colors.white,
        size: 160.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<LoginController>(
      builder: (_) {
        return Scaffold(
          body: controller.loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Stack(
                  children: [
                    Image.network(
                      config.loginBackground,
                      fit: BoxFit.cover,
                      height: Get.height,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    Center(
                      child: Container(
                        color: Colors.transparent,
                        constraints: const BoxConstraints(
                          maxWidth: 400.0,
                        ),
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onDoubleTap: () {
                                //! Secret Menu
                                //! Debug Mode Only
                                controller.doFirsTimeSetupLogin();
                              },
                              child: getLogo(),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            if (controller.firstTimeSetup)
                              SizedBox(
                                width: Get.width - 100,
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () =>
                                          controller.doFirsTimeSetupLogin(),
                                      child: Card(
                                        color: primaryColor,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 12,
                                                child: Image.network(
                                                  "https://i.ibb.co/6rXhphQ/281764.png",
                                                  height: 16.0,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              const Text(
                                                "First Time Setup",
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    const Text(
                                      "You must login with google",
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (!controller.firstTimeSetup)
                              SizedBox(
                                width: Get.width - 100,
                                child: Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () =>
                                          controller.doCustomerLogin(),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 12,
                                              child: Image.network(
                                                "https://i.ibb.co/6rXhphQ/281764.png",
                                                height: 16.0,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            Text(
                                              "${config.appDictionary.clientLogin!()}",
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12.0,
                                    ),
                                    if (AdminSettingApi
                                            .appSetting["multi_vendor"] ==
                                        true)
                                      ElevatedButton(
                                        onPressed: () =>
                                            controller.doVendorLogin(),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 12,
                                                child: Image.network(
                                                  "https://i.ibb.co/6rXhphQ/281764.png",
                                                  height: 16.0,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Text(
                                                // "Login as ${config.vendorString}",
                                                "${config.appDictionary.vendorLogin!()}",
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    const SizedBox(
                                      height: 16.0,
                                    ),
                                    InkWell(
                                      onTap: () => controller.doAdminLogin(),
                                      child: const Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Text(
                                          "Login as Administrator",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
