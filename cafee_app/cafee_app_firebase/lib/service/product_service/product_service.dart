import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/product/product.dart';

class ProductService {
  String get collectionName {
    return "products_${user!.uid}";
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getSnapshots() {
    return FirebaseFirestore.instance.collection(collectionName).snapshots();
  }

  Future<List<Product>> get() async {
    try {
      var snapshot =
          await FirebaseFirestore.instance.collection(collectionName).get();
      List<Product> products = [];
      for (var doc in snapshot.docs) {
        Map<String, dynamic> data = doc.data();
        Product product = Product.fromJson(data);
        products.add(product);
      }
      return products;
    } on Exception catch (_) {
      return [];
    }
  }

  Future<bool> create(Product product) async {
    String uid = Uuid().v4();
    product.id = uid;
    try {
      await FirebaseFirestore.instance
          .collection(collectionName)
          .doc(uid)
          .set(product.toJson());
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  update(Product product) async {
    try {
      await FirebaseFirestore.instance
          .collection(collectionName)
          .doc(product.id)
          .update(
            product.toJson(),
          );
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  delete(String docId) async {
    try {
      await FirebaseFirestore.instance
          .collection(collectionName)
          .doc(docId)
          .delete();
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  deleteAll() async {
    try {
      var snapshot =
          await FirebaseFirestore.instance.collection(collectionName).get();
      for (var i = 0; i < snapshot.docs.length; i++) {
        await FirebaseFirestore.instance
            .collection(collectionName)
            .doc(snapshot.docs[i].id)
            .delete();
      }
      return true;
    } on Exception catch (_) {
      return false;
    }
  }
}
