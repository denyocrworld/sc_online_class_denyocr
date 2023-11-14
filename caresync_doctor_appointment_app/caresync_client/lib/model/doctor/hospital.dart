import 'package:freezed_annotation/freezed_annotation.dart';

part 'hospital.freezed.dart';
part 'hospital.g.dart';

@freezed
class Hospital with _$Hospital {
  factory Hospital({
    int? id,
    dynamic photo,
    @JsonKey(name: 'hospital_name') String? hospitalName,
    @JsonKey(name: 'hospital_address') String? hospitalAddress,
    @JsonKey(name: 'hospital_location_latitude')
    double? hospitalLocationLatitude,
    @JsonKey(name: 'hospital_location_longitude')
    double? hospitalLocationLongitude,
    @JsonKey(name: 'hospital_phone_number') String? hospitalPhoneNumber,
    @JsonKey(name: 'hospital_whatsapp_number') String? hospitalWhatsappNumber,
    @JsonKey(name: 'hospital_email') String? hospitalEmail,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Hospital;

  factory Hospital.fromJson(Map<String, dynamic> json) =>
      _$HospitalFromJson(json);
}
