import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/user_profile/user_profile.dart';

class UserProfileService extends BaseService<UserProfile> {
  @override
  String get collectionName {
    return "user_profiles";
  }

  DocumentReference get myDocument {
    return FirebaseFirestore.instance.collection(collectionName).doc(user!.uid);
  }
}
