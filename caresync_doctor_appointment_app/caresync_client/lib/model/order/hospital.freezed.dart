// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hospital.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hospital _$HospitalFromJson(Map<String, dynamic> json) {
  return _Hospital.fromJson(json);
}

/// @nodoc
mixin _$Hospital {
  int? get id => throw _privateConstructorUsedError;
  dynamic get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'hospital_name')
  String? get hospitalName => throw _privateConstructorUsedError;
  @JsonKey(name: 'hospital_address')
  String? get hospitalAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'hospital_location_latitude')
  double? get hospitalLocationLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'hospital_location_longitude')
  double? get hospitalLocationLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'hospital_phone_number')
  String? get hospitalPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'hospital_whatsapp_number')
  String? get hospitalWhatsappNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'hospital_email')
  String? get hospitalEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HospitalCopyWith<Hospital> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HospitalCopyWith<$Res> {
  factory $HospitalCopyWith(Hospital value, $Res Function(Hospital) then) =
      _$HospitalCopyWithImpl<$Res, Hospital>;
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$HospitalCopyWithImpl<$Res, $Val extends Hospital>
    implements $HospitalCopyWith<$Res> {
  _$HospitalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photo = freezed,
    Object? hospitalName = freezed,
    Object? hospitalAddress = freezed,
    Object? hospitalLocationLatitude = freezed,
    Object? hospitalLocationLongitude = freezed,
    Object? hospitalPhoneNumber = freezed,
    Object? hospitalWhatsappNumber = freezed,
    Object? hospitalEmail = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hospitalName: freezed == hospitalName
          ? _value.hospitalName
          : hospitalName // ignore: cast_nullable_to_non_nullable
              as String?,
      hospitalAddress: freezed == hospitalAddress
          ? _value.hospitalAddress
          : hospitalAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      hospitalLocationLatitude: freezed == hospitalLocationLatitude
          ? _value.hospitalLocationLatitude
          : hospitalLocationLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      hospitalLocationLongitude: freezed == hospitalLocationLongitude
          ? _value.hospitalLocationLongitude
          : hospitalLocationLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      hospitalPhoneNumber: freezed == hospitalPhoneNumber
          ? _value.hospitalPhoneNumber
          : hospitalPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      hospitalWhatsappNumber: freezed == hospitalWhatsappNumber
          ? _value.hospitalWhatsappNumber
          : hospitalWhatsappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      hospitalEmail: freezed == hospitalEmail
          ? _value.hospitalEmail
          : hospitalEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HospitalImplCopyWith<$Res>
    implements $HospitalCopyWith<$Res> {
  factory _$$HospitalImplCopyWith(
          _$HospitalImpl value, $Res Function(_$HospitalImpl) then) =
      __$$HospitalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$HospitalImplCopyWithImpl<$Res>
    extends _$HospitalCopyWithImpl<$Res, _$HospitalImpl>
    implements _$$HospitalImplCopyWith<$Res> {
  __$$HospitalImplCopyWithImpl(
      _$HospitalImpl _value, $Res Function(_$HospitalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photo = freezed,
    Object? hospitalName = freezed,
    Object? hospitalAddress = freezed,
    Object? hospitalLocationLatitude = freezed,
    Object? hospitalLocationLongitude = freezed,
    Object? hospitalPhoneNumber = freezed,
    Object? hospitalWhatsappNumber = freezed,
    Object? hospitalEmail = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$HospitalImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hospitalName: freezed == hospitalName
          ? _value.hospitalName
          : hospitalName // ignore: cast_nullable_to_non_nullable
              as String?,
      hospitalAddress: freezed == hospitalAddress
          ? _value.hospitalAddress
          : hospitalAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      hospitalLocationLatitude: freezed == hospitalLocationLatitude
          ? _value.hospitalLocationLatitude
          : hospitalLocationLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      hospitalLocationLongitude: freezed == hospitalLocationLongitude
          ? _value.hospitalLocationLongitude
          : hospitalLocationLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      hospitalPhoneNumber: freezed == hospitalPhoneNumber
          ? _value.hospitalPhoneNumber
          : hospitalPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      hospitalWhatsappNumber: freezed == hospitalWhatsappNumber
          ? _value.hospitalWhatsappNumber
          : hospitalWhatsappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      hospitalEmail: freezed == hospitalEmail
          ? _value.hospitalEmail
          : hospitalEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HospitalImpl implements _Hospital {
  _$HospitalImpl(
      {this.id,
      this.photo,
      @JsonKey(name: 'hospital_name') this.hospitalName,
      @JsonKey(name: 'hospital_address') this.hospitalAddress,
      @JsonKey(name: 'hospital_location_latitude')
      this.hospitalLocationLatitude,
      @JsonKey(name: 'hospital_location_longitude')
      this.hospitalLocationLongitude,
      @JsonKey(name: 'hospital_phone_number') this.hospitalPhoneNumber,
      @JsonKey(name: 'hospital_whatsapp_number') this.hospitalWhatsappNumber,
      @JsonKey(name: 'hospital_email') this.hospitalEmail,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$HospitalImpl.fromJson(Map<String, dynamic> json) =>
      _$$HospitalImplFromJson(json);

  @override
  final int? id;
  @override
  final dynamic photo;
  @override
  @JsonKey(name: 'hospital_name')
  final String? hospitalName;
  @override
  @JsonKey(name: 'hospital_address')
  final String? hospitalAddress;
  @override
  @JsonKey(name: 'hospital_location_latitude')
  final double? hospitalLocationLatitude;
  @override
  @JsonKey(name: 'hospital_location_longitude')
  final double? hospitalLocationLongitude;
  @override
  @JsonKey(name: 'hospital_phone_number')
  final String? hospitalPhoneNumber;
  @override
  @JsonKey(name: 'hospital_whatsapp_number')
  final String? hospitalWhatsappNumber;
  @override
  @JsonKey(name: 'hospital_email')
  final String? hospitalEmail;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Hospital(id: $id, photo: $photo, hospitalName: $hospitalName, hospitalAddress: $hospitalAddress, hospitalLocationLatitude: $hospitalLocationLatitude, hospitalLocationLongitude: $hospitalLocationLongitude, hospitalPhoneNumber: $hospitalPhoneNumber, hospitalWhatsappNumber: $hospitalWhatsappNumber, hospitalEmail: $hospitalEmail, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HospitalImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            (identical(other.hospitalName, hospitalName) ||
                other.hospitalName == hospitalName) &&
            (identical(other.hospitalAddress, hospitalAddress) ||
                other.hospitalAddress == hospitalAddress) &&
            (identical(
                    other.hospitalLocationLatitude, hospitalLocationLatitude) ||
                other.hospitalLocationLatitude == hospitalLocationLatitude) &&
            (identical(other.hospitalLocationLongitude,
                    hospitalLocationLongitude) ||
                other.hospitalLocationLongitude == hospitalLocationLongitude) &&
            (identical(other.hospitalPhoneNumber, hospitalPhoneNumber) ||
                other.hospitalPhoneNumber == hospitalPhoneNumber) &&
            (identical(other.hospitalWhatsappNumber, hospitalWhatsappNumber) ||
                other.hospitalWhatsappNumber == hospitalWhatsappNumber) &&
            (identical(other.hospitalEmail, hospitalEmail) ||
                other.hospitalEmail == hospitalEmail) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(photo),
      hospitalName,
      hospitalAddress,
      hospitalLocationLatitude,
      hospitalLocationLongitude,
      hospitalPhoneNumber,
      hospitalWhatsappNumber,
      hospitalEmail,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HospitalImplCopyWith<_$HospitalImpl> get copyWith =>
      __$$HospitalImplCopyWithImpl<_$HospitalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HospitalImplToJson(
      this,
    );
  }
}

abstract class _Hospital implements Hospital {
  factory _Hospital(
      {final int? id,
      final dynamic photo,
      @JsonKey(name: 'hospital_name') final String? hospitalName,
      @JsonKey(name: 'hospital_address') final String? hospitalAddress,
      @JsonKey(name: 'hospital_location_latitude')
      final double? hospitalLocationLatitude,
      @JsonKey(name: 'hospital_location_longitude')
      final double? hospitalLocationLongitude,
      @JsonKey(name: 'hospital_phone_number') final String? hospitalPhoneNumber,
      @JsonKey(name: 'hospital_whatsapp_number')
      final String? hospitalWhatsappNumber,
      @JsonKey(name: 'hospital_email') final String? hospitalEmail,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$HospitalImpl;

  factory _Hospital.fromJson(Map<String, dynamic> json) =
      _$HospitalImpl.fromJson;

  @override
  int? get id;
  @override
  dynamic get photo;
  @override
  @JsonKey(name: 'hospital_name')
  String? get hospitalName;
  @override
  @JsonKey(name: 'hospital_address')
  String? get hospitalAddress;
  @override
  @JsonKey(name: 'hospital_location_latitude')
  double? get hospitalLocationLatitude;
  @override
  @JsonKey(name: 'hospital_location_longitude')
  double? get hospitalLocationLongitude;
  @override
  @JsonKey(name: 'hospital_phone_number')
  String? get hospitalPhoneNumber;
  @override
  @JsonKey(name: 'hospital_whatsapp_number')
  String? get hospitalWhatsappNumber;
  @override
  @JsonKey(name: 'hospital_email')
  String? get hospitalEmail;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$HospitalImplCopyWith<_$HospitalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
