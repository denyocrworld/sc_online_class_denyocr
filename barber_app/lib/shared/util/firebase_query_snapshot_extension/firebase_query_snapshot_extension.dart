import 'package:cloud_firestore/cloud_firestore.dart';

extension FirebaseQuerySnapshotExtension on QuerySnapshot {
  List toList() {
    List items = [];
    var snapshot = this;
    for (var i = 0; i < snapshot.docs.length; i++) {
      var d = snapshot.docs[i].data() as Map<String, dynamic>;
      d["id"] = snapshot.docs[i].id;
      items.add(d);
    }

    return items;
  }
}
