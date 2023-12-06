import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/user_profile/user_profile.dart';

User? get user {
  return FirebaseAuth.instance.currentUser;
}

bool get isLoggedIn => user != null;

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
      initializeUserData();
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  Future<bool> loginAnonymously() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
      initializeUserData();
      return true;
    } on Exception catch (_) {
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
      initializeUserData();
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<bool> register({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      initializeUserData();
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  Future<bool> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  Future initializeUserData() async {
    var isNotExists = await UserProfileService().isNotExists(user!.uid);
    if (isNotExists) {
      UserProfileService().set(
        user!.uid,
        UserProfile(
          name: user?.displayName,
          email: user?.email,
          photo: user?.photoURL,
          storeName: "-",
          storeAddress: "-",
          storePhoneNumber: "-",
        ),
      );
    }
  }
}
