import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hyper_ui/model/product/product.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import 'package:uuid/uuid.dart';

class OrderService {
  String get collectionName {
    return "orders_${user!.uid}";
  }

  Future<bool> create({
    required List<Product> products,
    required double total,
    required String status,
  }) async {
    try {
      String uid = Uuid().v4();
      await FirebaseFirestore.instance.collection(collectionName).doc(uid).set({
        "items": products.map((e) => e.toJson()),
        "total": total,
        "status": status,
        "created_at": Timestamp.now(),
      });
      return true;
    } on Exception catch (_) {
      return false;
    }
  }
}
