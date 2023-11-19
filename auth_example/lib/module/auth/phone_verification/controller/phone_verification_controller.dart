import 'package:flutter/material.dart';
import 'package:auth_example/core.dart';

class PhoneVerificationController extends State<PhoneVerificationView> {
  static late PhoneVerificationController instance;
  late PhoneVerificationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? phoneNumber;
  String? verificationId;
  String? smsCode;
  bool loginSuccess = false;

  sendSmsCode() async {
    if (phoneNumber == null) return;
    try {
      showLoading();
      await AuthService().verifyPhoneNumber(
        phoneNumber: phoneNumber!,
        onCodeSent: (id) {
          hideLoading();
          verificationId = id;
          print("verificationId: $verificationId");
          setState(() {});
        },
        onCodeAutoRetrievalTimeout: (verificationId) {
          hideLoading();
          snackbarDanger(message: 'Code Auto Retrieval Timeout');
        },
        onVerificationCompleted: (credential) {
          hideLoading();
        },
        onVerificationFailed: (e) {
          hideLoading();
          snackbarDanger(message: "Verification failed");
        },
      );
    } on Exception catch (err) {
      hideLoading();
      print("Exception");
      print(err);
    }
  }

  verifyCode() async {
    if (smsCode == null) return;
    showLoading();
    var loginSuccess = await AuthService().loginWithSmsCode(
      verificationId!,
      smsCode!,
    );
    hideLoading();

    if (!loginSuccess) {
      snackbarDanger(message: "Failed to sign in, wrong sms code?");
      return;
    }

    if (loginSuccess) {
      Get.offAll(const MainNavigationView());
    }
  }

  changeNumber() async {
    verificationId = null;
    smsCode = null;
    phoneNumber = null;
    setState(() {});
  }
}
