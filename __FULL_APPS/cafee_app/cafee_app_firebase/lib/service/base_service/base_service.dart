import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hyper_ui/core.dart';

class BaseService<T> {
  String get collectionName {
    return "collection_name_${user!.uid}";
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getSnapshots() {
    return FirebaseFirestore.instance.collection(collectionName).snapshots();
  }

  Future<List<T>> get() async {
    try {
      var snapshot =
          await FirebaseFirestore.instance.collection(collectionName).get();
      List<T> items = [];
      for (var doc in snapshot.docs) {
        Map<String, dynamic> data = doc.data();
        T item = fromJson(data);
        items.add(item);
      }
      return items;
    } on Exception catch (_) {
      return [];
    }
  }

  T fromJson(Map<String, dynamic> data) {
    throw UnimplementedError("fromJson not implemented for type $T");
  }

  //fromJson error
  Future<dynamic> getByDocId(String docId) async {
    try {
      var snapshot = await FirebaseFirestore.instance
          .collection(collectionName)
          .doc(docId)
          .get();

      if (!snapshot.exists) return null;
      Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
      return fromJson(data);
    } on Exception catch (_) {
      return null;
    }
  }

  Future<bool> isExists(String docId) async {
    try {
      var snapshot = await FirebaseFirestore.instance
          .collection(collectionName)
          .doc(docId)
          .get();

      return snapshot.exists;
    } on Exception catch (_) {
      return false;
    }
  }

  Future<bool> isNotExists(String docId) async {
    try {
      var snapshot = await FirebaseFirestore.instance
          .collection(collectionName)
          .doc(docId)
          .get();

      return !snapshot.exists;
    } on Exception catch (_) {
      return true;
    }
  }

  Future<bool> create(String id, T item) async {
    try {
      await FirebaseFirestore.instance
          .collection(collectionName)
          .doc(id)
          .set((item as dynamic).toJson());
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  update(String docId, T item) async {
    try {
      await FirebaseFirestore.instance
          .collection(collectionName)
          .doc(docId)
          .update(
            (item as dynamic).toJson(),
          );
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  set(String docId, T item) async {
    try {
      await FirebaseFirestore.instance
          .collection(collectionName)
          .doc(docId)
          .set(
            (item as dynamic).toJson(),
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
