import 'dart:developer';

import 'package:barber_app/core.dart';


class VendorApi {
  static Future<DocumentReference> generateSingleDummy(String ownerId) async {
    DocumentReference docRef;
    docRef = vendorManagerCollection;

    log("Generate Vendor Data..");
    log("Is Admin? ${AppSession.isAdmin}");

    Map<String, dynamic> value = {
      "vendor_name": AppSession.dummyApi.vendorNames.random(),
      "address": "Dallas, 4426  Ersel Street, Texas",
      "photo_url": AppSession.dummyApi.photos.random(),
      "latitude": 44.08476666029554,
      "longitude": 70.22286432261072,
      "phone": "+62821884488864",
      "website": "https://codekaze.com/",
      "products": AppSession.dummyApi.products,
      "galleries": AppSession.dummyApi.galleries,
      "reviews": AppSession.dummyApi.reviews,
      "rate": 0.0,
      "rate_count": 0,
      "about_us":
          "Vendors are specially trained to cut men’s hair. They know what men are looking for in a haircut and are familiar with the range of men’s styles. And going to a male barber is extremely helpful because he can relate to you. As a guy himself, your barber will draw upon his knowledge of men’s hair to help you decide what’s best for you.",
      "status": "Pending",
    };

    var onGenerateDummy = AppSession.dummyApi.onGenerateSingleDummy();
    if (onGenerateDummy.isNotEmpty) {
      value = onGenerateDummy;
    }
    await docRef.set(value);

    await docRef.collection("products").addAll(AppSession.dummyApi.products);
    await docRef.collection("galleries").addAll(AppSession.dummyApi.galleries);
    await docRef.collection("reviews").addAll(AppSession.dummyApi.reviews);
    await docRef.collection("staffs").addAll(AppSession.dummyApi.staffs);
    return docRef;
  }

  static Future generateDummy() async {
    for (var i = 0; i < AppSession.dummyApi.vendors.length; i++) {
      var vendor = AppSession.dummyApi.vendors[i];
      DocumentReference docRef = FirebaseFirestore.instance
          .collection(collection.vendorCollection)
          .doc(const Uuid().v4());
      docRef.set(vendor);

      await docRef.collection("products").addAll(AppSession.dummyApi.products);
      await docRef
          .collection("galleries")
          .addAll(AppSession.dummyApi.galleries);
      await docRef.collection("reviews").addAll(AppSession.dummyApi.reviews);
      await docRef.collection("staffs").addAll(AppSession.dummyApi.staffs);
    }
  }

  static Future getProducts(String vendorId) async {
    List products = [];
    var snapshot = await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .doc(vendorId)
        .collection("products")
        .get();

    for (var doc in snapshot.docs) {
      var item = doc.data();
      item["id"] = doc.id;
      products.add(item);
    }

    return products;
  }

  //--------------------------
  //--------------------------

  static Future initialize() async {
    var uid = AppSession.userId;
    log("#############");
    log(AppSession.currentUser.toString());
    log(AppSession.userId.toString());
    log("uid: $uid");
    log("#############");
    var snapshot = await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .doc(uid)
        .get();

    log("${snapshot.exists}");
    if (!snapshot.exists) {
      log("This Vendor is Not Exists: $uid");
      log("###############");
      log("###############");
      log("Generate Your Vendor Dummy");
      log("###############");
      var vendorRef = await VendorApi.generateSingleDummy(AppSession.userId);

      var vendorSnapshot = await vendorRef.get();
      var vendor = vendorSnapshot.data() as Map<String, dynamic>;
      vendor["id"] = vendorSnapshot.id;
      return vendor;
    } else {
      var vendor = snapshot.data() as Map<String, dynamic>;
      vendor["id"] = snapshot.id;
      return vendor;
    }
  }

  static Future addSevice({
    required String productName,
    required String description,
    required String image,
    required String price,
    required String gender,
    required String executionTime,
  }) async {
    await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .doc(AppSession.userId)
        .collection("products")
        .add({
      "title": productName,
      "image": image,
      "price": price,
      "description": description,
      "gender": gender,
      "execution_time": executionTime,
    });
  }

  static Future updateProduct({
    required String id,
    required String productName,
    required String description,
    required String image,
    required String price,
    required String gender,
    String? executionTime,
  }) async {
    await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .doc(AppSession.userId)
        .collection("products")
        .doc(id)
        .update({
      "title": productName,
      "image": image,
      "price": price,
      "description": description,
      "gender": gender,
      "execution_time": executionTime ?? "Instant",
    });
  }

  static Future addVendor({
    required String staffName,
    required String photo,
    required String description,
    required List staffProducts,
  }) async {
    await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .doc(AppSession.userId)
        .collection("staffs")
        .add({
      "staff_name": staffName,
      "photo": photo,
      "description": description,
      "staff_products": staffProducts,
    });
  }

  static Future updateVendor({
    required String id,
    required String staffName,
    required String photo,
    required String description,
    required List staffProducts,
  }) async {
    log("staffProducts: $staffProducts");

    await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .doc(AppSession.userId)
        .collection("staffs")
        .doc(id)
        .update({
      "staff_name": staffName,
      "photo": photo,
      "description": description,
      "staff_products": staffProducts,
    });
  }

  static Future addGalleryPhoto({
    required String image,
  }) async {
    await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .doc(AppSession.userId)
        .collection("galleries")
        .add({
      "image": image,
    });
  }

  static Future deleteProduct({
    required Map<String, dynamic> item,
  }) async {
    await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .doc(AppSession.userId)
        .collection("products")
        .doc(item["id"])
        .delete();
  }

  static Future deleteVendor({
    required Map<String, dynamic> item,
  }) async {
    await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .doc(AppSession.userId)
        .collection("staffs")
        .doc(item["id"])
        .delete();
  }
}
