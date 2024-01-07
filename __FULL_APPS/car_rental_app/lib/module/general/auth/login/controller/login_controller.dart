import 'package:car_rental_app/core.dart';



class LoginController extends GetxController {
  LoginView? view;
  bool loading = true;
  bool firstTimeSetup = false;

  @override
  void onInit() {
    super.onInit();
    checkData();
  }

  GoogleSignIn googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      // 'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  GoogleSignInAccount? googleUser;

  Future<bool> isAnAdmin(UserCredential userCredential) async {
    var isAdmin = true;
    var adminSnapshot = await FirebaseFirestore.instance
        .collection(collection.adminCollection)
        .get();

    print("adminSnapshot: ${adminSnapshot.docs.length}");
    if (adminSnapshot.docs.isNotEmpty) {
      if (adminSnapshot.docs[0]["uid"] != userCredential.user!.uid) {
        print("This user is not an Admin");
        isAdmin = false;
        update();
      }
    }
    return isAdmin;
  }

  Future<bool> isVendorOwner(UserCredential userCredential) async {
    var isVendorOwner = false;
    var snapshot = await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .doc(userCredential.user!.uid)
        .get();

    if (snapshot.exists) {
      isVendorOwner = true;
    }
    return isVendorOwner;
  }

  Future<bool> isEligibleToRegisterVendor(UserCredential userCredential) async {
    //if not registered as admin & doesnt have any vendor
    if (await isAnAdmin(userCredential) ||
        await isVendorOwner(userCredential)) {
      return true;
    }

    var snapshot = await FirebaseFirestore.instance
        .collection(collection.userDataCollection)
        .doc(userCredential.user!.uid)
        .get();
    if (snapshot.exists) {
      //This user is registered as client
      return false;
    } else {
      return true;
    }
  }

  handleGoogleLogin({
    required Future Function(UserCredential userCredential) onSuccess,
    required Future Function() onFailed,
  }) async {
    UserCredential userCredential;
    OAuthCredential credential;

    AppSession.isAdmin = false;
    AppSession.isVendorOwner = false;

    showLoading();
    if (await googleSignIn.isSignedIn()) {
      await googleSignIn.signOut();
    }

    try {
      await googleSignIn.disconnect();
    } on Exception catch (_) {}

    try {
      try {
        googleUser = await googleSignIn.signIn();
      } catch (e) {
        print("Error here");
        print(e);
      }
      if (googleUser == null) return;
    } on Exception catch (error) {
      print("Failed to Login");
      print(error);
      return;
    }

    GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
    credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    await AdminSettingApi.loadAppSetting();
    await onSuccess(userCredential);
  }

  doCustomerLogin() async {
    await handleGoogleLogin(
      onFailed: () async {
        print("");
      },
      onSuccess: (userCredential) async {
        if (await isAnAdmin(userCredential)) {
          hideLoading();
          Get.defaultDialog(
            title: "Can't login",
            middleText: "You are an Admin, cannot login as Client",
          );
          return;
        }

        if (await isVendorOwner(userCredential)) {
          hideLoading();
          Get.defaultDialog(
            title: "Can't login",
            middleText: "You are Vendor Owner, cannot login as Client",
          );
          return;
        }

        print("currentUser: ${FirebaseAuth.instance.currentUser}");
        print("currentUser: ${AppSession.userId}");
        print("------------");

        print("# user api initialize");
        await UserApi.initialize();
        AppSession.isVendorOwner = false;

        if (await AppApi.needToGenerateIndex()) {
          return AppApi.redirectToFirstTimeIndexSetup();
        }

        Get.deleteAll();
        var hasPendingBooking = await BookingApi.hasPendingBooking();
        Get.offAll(MainNavigationView(
          selectedIndex: hasPendingBooking ? 0 : 1,
        ));
      },
    );
  }

  doVendorLogin() async {
    await handleGoogleLogin(
      onFailed: () async {
        print("");
      },
      onSuccess: (userCredential) async {
        if (await isEligibleToRegisterVendor(userCredential)) {
        } else {
          hideLoading();
          Get.defaultDialog(
            title: "Can't login",
            middleText: "This email is registered as a Vendor client",
          );
          return;
        }

        await UserApi.initialize();
        AppSession.isVendorOwner = true;
        AppSession.myVendor = await VendorApi.initialize();

        if (await AppApi.needToGenerateIndex()) {
          return AppApi.redirectToFirstTimeIndexSetup();
        }

        Get.deleteAll();
        Get.offAll(const VmMainNavigationView());
      },
    );
  }

  doAdminLogin() async {
    await handleGoogleLogin(
      onFailed: () async {
        print("");
      },
      onSuccess: (userCredential) async {
        if (!await isAnAdmin(userCredential)) {
          hideLoading();
          Get.defaultDialog(
            title: "Can't login",
            middleText: "This user is not an Admin",
          );
          return;
        }

        await UserApi.initialize();
        AppSession.isAdmin = true;
        AppSession.myVendor = await VendorApi.initialize();

        if (await AppApi.needToGenerateIndex()) {
          return AppApi.redirectToFirstTimeIndexSetup();
        }

        Get.deleteAll();
        Get.offAll(
          AdmMainNavigationView(),
        );
      },
    );
  }

  doFirsTimeSetupLogin({
    bool generateDummy = true,
  }) async {
    await handleGoogleLogin(
      onFailed: () async {
        print("");
      },
      onSuccess: (userCredential) async {
        await AppApi.handleFirstTimeLogin(
          generateDummy: generateDummy,
        );
      },
    );
  }

  checkData() async {
    loading = true;
    firstTimeSetup = false;
    update();

    var snapshot = await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        // .limit(1)
        .get();

    if (snapshot.docs.isEmpty) {
      firstTimeSetup = true;
    }

    loading = false;
    update();
  }
}
