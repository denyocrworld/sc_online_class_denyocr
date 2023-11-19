import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  Future<bool> loginByEmail({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on Exception {
      return false;
    }
  }

  Future<bool> registerByEmail({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on Exception {
      return false;
    }
  }

  Future<bool> loginByGoogle() async {
    GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );

    try {
      await googleSignIn.disconnect();
    } catch (_) {}

    try {
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      var userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      debugPrint("userCredential: $userCredential");
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required Function(String verificationId) onCodeSent,
    required Function(PhoneAuthCredential credential) onVerificationCompleted,
    required Function(FirebaseAuthException e) onVerificationFailed,
    required Function(String verificationId) onCodeAutoRetrievalTimeout,
  }) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+6282146727409',
      verificationCompleted: (PhoneAuthCredential credential) async {
        /*
          This handler will only be called on Android devices which support
          automatic SMS code resolution.

          When the SMS code is delivered to the device, Android will automatically
          verify the SMS code without requiring the user to manually input the code.
          If this event occurs, a PhoneAuthCredential is automatically provided
          which can be used to sign-in with or link the user's phone number.
          */
        onVerificationCompleted(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        /*
          If Firebase returns an error, for example for an incorrect phone number or 
          if the SMS quota for the project has exceeded, a FirebaseAuthException will 
          be sent to this handler. In this case, you would prompt your 
          user something went wrong depending on the error code.
          */
        onVerificationFailed(e);
      },
      codeSent: (String verificationId, int? resendToken) async {
        /*
          When Firebase sends an SMS code to the device, 
          this handler is triggered with a verificationId and
          resendToken
          (A resendToken is only supported on Android devices, iOS devices 
          will always return a null value).

          Once triggered, it would be a good time to update your
          application UI to prompt the user to enter the
          SMS code they're expecting.
          
          Once the SMS code has been entered, you can combine the
          verification ID with the SMS code to create a new PhoneAuthCredential
          */
        onCodeSent(verificationId);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        /*
          On Android devices which support automatic SMS code resolution, 
          this handler will be called if the device has not automatically resolved
          an SMS message within a certain timeframe. Once the timeframe has passed,
          the device will no longer attempt to resolve any incoming messages.

          By default, the device waits for 30 seconds however this can be customized
          with the timeout argument:
          */
        onCodeAutoRetrievalTimeout(verificationId);
      },
    );
  }

  Future<bool> loginWithSmsCode(
    String verificationId,
    String smsCode,
  ) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );

    try {
      await FirebaseAuth.instance.signInWithCredential(credential);
      print("Login Success!");
      return true;
    } on Exception catch (err) {
      print("Failed to sign in, wrong smsCode?");
      print(err);
      return false;
    }
  }

  Future logout() async {
    await FirebaseAuth.instance.signOut();
  }
}
