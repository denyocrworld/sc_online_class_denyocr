import 'package:flutter/material.dart';
import 'package:auth_example/core.dart';
import '../controller/phone_verification_controller.dart';

class PhoneVerificationView extends StatefulWidget {
  const PhoneVerificationView({Key? key}) : super(key: key);

  Widget build(context, PhoneVerificationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PhoneVerification"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: TextField(
                  decoration: const InputDecoration.collapsed(
                    hintText: "Examples: +62 8214 2412",
                  ),
                  keyboardType: TextInputType.number,
                  readOnly: controller.verificationId != null,
                  onChanged: (value) {
                    controller.phoneNumber = value;
                  },
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              if (controller.verificationId == null)
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 42,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () => controller.sendSmsCode(),
                    child: const Text("Send Sms Code"),
                  ),
                ),
              if (controller.verificationId != null)
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 42,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () => controller.changeNumber(),
                    child: const Text("Change number"),
                  ),
                ),
              const Divider(),
              const SizedBox(
                height: 8.0,
              ),
              if (controller.verificationId != null) ...[
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        8.0,
                      ),
                    ),
                  ),
                  child: TextField(
                    decoration: const InputDecoration.collapsed(
                      hintText: "Sms Code",
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      controller.smsCode = value;
                    },
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 42,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () => controller.verifyCode(),
                    child: const Text("Verify"),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<PhoneVerificationView> createState() => PhoneVerificationController();
}
