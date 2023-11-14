import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialization.freezed.dart';
part 'specialization.g.dart';

@freezed
class Specialization with _$Specialization {
  factory Specialization({
    int? id,
    @JsonKey(name: 'specialization_name') String? specializationName,
    @JsonKey(name: 'created_at') dynamic createdAt,
    @JsonKey(name: 'updated_at') dynamic updatedAt,
  }) = _Specialization;

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}
