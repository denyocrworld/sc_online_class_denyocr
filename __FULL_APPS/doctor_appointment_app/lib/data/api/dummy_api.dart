import 'dart:math';

extension DummyListExtension on List {
  String random() {
    int min = 0;
    int max = length - 1;
    int index = min + Random().nextInt(max - min);
    return this[index];
  }
}

class CollectionNames {
  String adminCollection;
  String adminSettingCollection;
  String vendorCollection;
  String bookingCollection;
  String bookingListCollection;
  String userDataCollection;
  String chatCollection;
  String chatListCollection;
  String ratingCollection;
  String userRatingCollection;

  CollectionNames({
    required this.adminCollection,
    required this.adminSettingCollection,
    required this.vendorCollection,
    required this.bookingCollection,
    required this.bookingListCollection,
    required this.userDataCollection,
    required this.chatCollection,
    required this.chatListCollection,
    required this.ratingCollection,
    required this.userRatingCollection,
  });
}

class AppDictionary {
  Function? clientLogin;
  Function? vendorLogin;

  AppDictionary({
    this.clientLogin,
    this.vendorLogin,
  });

  static AppDictionary base() {
    return AppDictionary(
      clientLogin: () {
        return "Sign in as Client";
      },
      vendorLogin: () {
        return "Sign in as Barber Shop";
      },
    );
  }
}

class AppConfig {
  final String loginBackground;
  final String logo;
  final String searchCoverBackground;
  final String orderButtonText;
  final String vendorString;
  final String staffString;
  final String productString;
  final CollectionNames collectionNames;
  final bool useAlternativeLogin;
  final bool multipleProducts;
  final bool linkProductToStaff;
  final bool setDuration;
  final AppDictionary appDictionary;
  final Map fieldConfig;
  final int defaultThemeIndex;

  AppConfig({
    required this.loginBackground,
    required this.logo,
    required this.searchCoverBackground,
    required this.orderButtonText,
    required this.vendorString,
    required this.staffString,
    required this.productString,
    required this.collectionNames,
    required this.useAlternativeLogin,
    required this.appDictionary,
    required this.multipleProducts,
    required this.linkProductToStaff,
    required this.setDuration,
    required this.fieldConfig,
    required this.defaultThemeIndex,
  });
}

class DummyApi {
  late AppConfig appConfig;
  Map<String, dynamic> onGenerateSingleDummy() {
    return {};
  }

  List<Map<String, dynamic>> vendors = [];

  List vendorNames = [];

  List photos = [];

  List products = [];

  List staffs = [];

  List galleries = [];

  List reviews = [];
}
