import 'package:firebase_storage/firebase_storage.dart';

Reference fireStorageImages(String fileName) {
  return FirebaseStorage.instance.ref().child('images').child(fileName);
}
