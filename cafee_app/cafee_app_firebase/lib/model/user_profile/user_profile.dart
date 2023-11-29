import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@unfreezed
class UserProfile with _$UserProfile {
  factory UserProfile({
    String? id,
    String? photo,
    String? email,
    String? name,
    @JsonKey(name: 'store_name') String? storeName,
    @JsonKey(name: 'store_address') String? storeAddress,
    @JsonKey(name: 'store_phone_number') String? storePhoneNumber,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
