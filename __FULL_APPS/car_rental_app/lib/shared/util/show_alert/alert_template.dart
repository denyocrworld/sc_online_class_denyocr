import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

class AlertTemplate extends StatefulWidget {
  final AlertType alertType;
  final String message;

  const AlertTemplate({super.key, 
    required this.alertType,
    required this.message,
  });
  @override
  _AlertTemplateState createState() => _AlertTemplateState();
}

class _AlertTemplateState extends State<AlertTemplate> {
  String get getIconByAlertType {
    if (widget.alertType == AlertType.success) {
      return "assets/icon/success.gif";
    } else if (widget.alertType == AlertType.warning) {
      return "assets/icon/warning.gif";
    } else if (widget.alertType == AlertType.info) {
      return "assets/icon/info.gif";
    }
    return "assets/icon/success.gif";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 30.0,
                right: 30.0,
              ),
              child: Container(
                  padding: largePadding,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: mediumRadius,
                  ),
                  child: Wrap(
                    children: [
                      SizedBox(
                        width: Get.width,
                        child: Row(
                          children: [
                            const Spacer(),
                            InkWell(
                              onTap: () => Get.back(),
                              child: Icon(
                                Icons.close,
                                color: Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: Get.width,
                        child: Image.asset(
                          getIconByAlertType,
                          width: Get.width / 4,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      SizedBox(
                        width: Get.width,
                        child: Center(
                          child: Text(
                            widget.message,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
