// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoctorSchedule _$DoctorScheduleFromJson(Map<String, dynamic> json) {
  return _DoctorSchedule.fromJson(json);
}

/// @nodoc
mixin _$DoctorSchedule {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hospital_id')
  int? get hospitalId => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_id')
  int? get doctorId => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'consultation_fee')
  double? get consultationFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_limit')
  int? get patientLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Hospital? get hospital => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorScheduleCopyWith<DoctorSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorScheduleCopyWith<$Res> {
  factory $DoctorScheduleCopyWith(
          DoctorSchedule value, $Res Function(DoctorSchedule) then) =
      _$DoctorScheduleCopyWithImpl<$Res, DoctorSchedule>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'hospital_id') int? hospitalId,
      @JsonKey(name: 'doctor_id') int? doctorId,
      String? day,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'consultation_fee') double? consultationFee,
      @JsonKey(name: 'patient_limit') int? patientLimit,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      Hospital? hospital});

  $HospitalCopyWith<$Res>? get hospital;
}

/// @nodoc
class _$DoctorScheduleCopyWithImpl<$Res, $Val extends DoctorSchedule>
    implements $DoctorScheduleCopyWith<$Res> {
  _$DoctorScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hospitalId = freezed,
    Object? doctorId = freezed,
    Object? day = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? consultationFee = freezed,
    Object? patientLimit = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hospital = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      hospitalId: freezed == hospitalId
          ? _value.hospitalId
          : hospitalId // ignore: cast_nullable_to_non_nullable
              as int?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      consultationFee: freezed == consultationFee
          ? _value.consultationFee
          : consultationFee // ignore: cast_nullable_to_non_nullable
              as double?,
      patientLimit: freezed == patientLimit
          ? _value.patientLimit
          : patientLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hospital: freezed == hospital
          ? _value.hospital
          : hospital // ignore: cast_nullable_to_non_nullable
              as Hospital?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HospitalCopyWith<$Res>? get hospital {
    if (_value.hospital == null) {
      return null;
    }

    return $HospitalCopyWith<$Res>(_value.hospital!, (value) {
      return _then(_value.copyWith(hospital: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorScheduleImplCopyWith<$Res>
    implements $DoctorScheduleCopyWith<$Res> {
  factory _$$DoctorScheduleImplCopyWith(_$DoctorScheduleImpl value,
          $Res Function(_$DoctorScheduleImpl) then) =
      __$$DoctorScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'hospital_id') int? hospitalId,
      @JsonKey(name: 'doctor_id') int? doctorId,
      String? day,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'consultation_fee') double? consultationFee,
      @JsonKey(name: 'patient_limit') int? patientLimit,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      Hospital? hospital});

  @override
  $HospitalCopyWith<$Res>? get hospital;
}

/// @nodoc
class __$$DoctorScheduleImplCopyWithImpl<$Res>
    extends _$DoctorScheduleCopyWithImpl<$Res, _$DoctorScheduleImpl>
    implements _$$DoctorScheduleImplCopyWith<$Res> {
  __$$DoctorScheduleImplCopyWithImpl(
      _$DoctorScheduleImpl _value, $Res Function(_$DoctorScheduleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hospitalId = freezed,
    Object? doctorId = freezed,
    Object? day = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? consultationFee = freezed,
    Object? patientLimit = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hospital = freezed,
  }) {
    return _then(_$DoctorScheduleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      hospitalId: freezed == hospitalId
          ? _value.hospitalId
          : hospitalId // ignore: cast_nullable_to_non_nullable
              as int?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      consultationFee: freezed == consultationFee
          ? _value.consultationFee
          : consultationFee // ignore: cast_nullable_to_non_nullable
              as double?,
      patientLimit: freezed == patientLimit
          ? _value.patientLimit
          : patientLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hospital: freezed == hospital
          ? _value.hospital
          : hospital // ignore: cast_nullable_to_non_nullable
              as Hospital?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorScheduleImpl implements _DoctorSchedule {
  _$DoctorScheduleImpl(
      {this.id,
      @JsonKey(name: 'hospital_id') this.hospitalId,
      @JsonKey(name: 'doctor_id') this.doctorId,
      this.day,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime,
      @JsonKey(name: 'consultation_fee') this.consultationFee,
      @JsonKey(name: 'patient_limit') this.patientLimit,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.hospital});

  factory _$DoctorScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorScheduleImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'hospital_id')
  final int? hospitalId;
  @override
  @JsonKey(name: 'doctor_id')
  final int? doctorId;
  @override
  final String? day;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  @override
  @JsonKey(name: 'consultation_fee')
  final double? consultationFee;
  @override
  @JsonKey(name: 'patient_limit')
  final int? patientLimit;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final Hospital? hospital;

  @override
  String toString() {
    return 'DoctorSchedule(id: $id, hospitalId: $hospitalId, doctorId: $doctorId, day: $day, startTime: $startTime, endTime: $endTime, consultationFee: $consultationFee, patientLimit: $patientLimit, createdAt: $createdAt, updatedAt: $updatedAt, hospital: $hospital)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorScheduleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hospitalId, hospitalId) ||
                other.hospitalId == hospitalId) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.consultationFee, consultationFee) ||
                other.consultationFee == consultationFee) &&
            (identical(other.patientLimit, patientLimit) ||
                other.patientLimit == patientLimit) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.hospital, hospital) ||
                other.hospital == hospital));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      hospitalId,
      doctorId,
      day,
      startTime,
      endTime,
      consultationFee,
      patientLimit,
      createdAt,
      updatedAt,
      hospital);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorScheduleImplCopyWith<_$DoctorScheduleImpl> get copyWith =>
      __$$DoctorScheduleImplCopyWithImpl<_$DoctorScheduleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorScheduleImplToJson(
      this,
    );
  }
}

abstract class _DoctorSchedule implements DoctorSchedule {
  factory _DoctorSchedule(
      {final int? id,
      @JsonKey(name: 'hospital_id') final int? hospitalId,
      @JsonKey(name: 'doctor_id') final int? doctorId,
      final String? day,
      @JsonKey(name: 'start_time') final String? startTime,
      @JsonKey(name: 'end_time') final String? endTime,
      @JsonKey(name: 'consultation_fee') final double? consultationFee,
      @JsonKey(name: 'patient_limit') final int? patientLimit,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final Hospital? hospital}) = _$DoctorScheduleImpl;

  factory _DoctorSchedule.fromJson(Map<String, dynamic> json) =
      _$DoctorScheduleImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'hospital_id')
  int? get hospitalId;
  @override
  @JsonKey(name: 'doctor_id')
  int? get doctorId;
  @override
  String? get day;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;
  @override
  @JsonKey(name: 'consultation_fee')
  double? get consultationFee;
  @override
  @JsonKey(name: 'patient_limit')
  int? get patientLimit;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  Hospital? get hospital;
  @override
  @JsonKey(ignore: true)
  _$$DoctorScheduleImplCopyWith<_$DoctorScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
