// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Doctor _$DoctorFromJson(Map<String, dynamic> json) {
  return _Doctor.fromJson(json);
}

/// @nodoc
mixin _$Doctor {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_name')
  String? get doctorName => throw _privateConstructorUsedError;
  dynamic get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'specialization_id')
  int? get specializationId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'medical_treatment')
  String? get medicalTreatment => throw _privateConstructorUsedError;
  @JsonKey(name: 'practical_experience')
  String? get practicalExperience => throw _privateConstructorUsedError;
  @JsonKey(name: 'educational_background')
  String? get educationalBackground => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_schedules')
  List<DoctorSchedule>? get doctorSchedules =>
      throw _privateConstructorUsedError;
  Specialization? get specialization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorCopyWith<Doctor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorCopyWith<$Res> {
  factory $DoctorCopyWith(Doctor value, $Res Function(Doctor) then) =
      _$DoctorCopyWithImpl<$Res, Doctor>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'doctor_name') String? doctorName,
      dynamic photo,
      @JsonKey(name: 'specialization_id') int? specializationId,
      String? description,
      @JsonKey(name: 'medical_treatment') String? medicalTreatment,
      @JsonKey(name: 'practical_experience') String? practicalExperience,
      @JsonKey(name: 'educational_background') String? educationalBackground,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'doctor_schedules') List<DoctorSchedule>? doctorSchedules,
      Specialization? specialization});

  $SpecializationCopyWith<$Res>? get specialization;
}

/// @nodoc
class _$DoctorCopyWithImpl<$Res, $Val extends Doctor>
    implements $DoctorCopyWith<$Res> {
  _$DoctorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? doctorName = freezed,
    Object? photo = freezed,
    Object? specializationId = freezed,
    Object? description = freezed,
    Object? medicalTreatment = freezed,
    Object? practicalExperience = freezed,
    Object? educationalBackground = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? doctorSchedules = freezed,
    Object? specialization = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      doctorName: freezed == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      specializationId: freezed == specializationId
          ? _value.specializationId
          : specializationId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      medicalTreatment: freezed == medicalTreatment
          ? _value.medicalTreatment
          : medicalTreatment // ignore: cast_nullable_to_non_nullable
              as String?,
      practicalExperience: freezed == practicalExperience
          ? _value.practicalExperience
          : practicalExperience // ignore: cast_nullable_to_non_nullable
              as String?,
      educationalBackground: freezed == educationalBackground
          ? _value.educationalBackground
          : educationalBackground // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      doctorSchedules: freezed == doctorSchedules
          ? _value.doctorSchedules
          : doctorSchedules // ignore: cast_nullable_to_non_nullable
              as List<DoctorSchedule>?,
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as Specialization?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpecializationCopyWith<$Res>? get specialization {
    if (_value.specialization == null) {
      return null;
    }

    return $SpecializationCopyWith<$Res>(_value.specialization!, (value) {
      return _then(_value.copyWith(specialization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorImplCopyWith<$Res> implements $DoctorCopyWith<$Res> {
  factory _$$DoctorImplCopyWith(
          _$DoctorImpl value, $Res Function(_$DoctorImpl) then) =
      __$$DoctorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'doctor_name') String? doctorName,
      dynamic photo,
      @JsonKey(name: 'specialization_id') int? specializationId,
      String? description,
      @JsonKey(name: 'medical_treatment') String? medicalTreatment,
      @JsonKey(name: 'practical_experience') String? practicalExperience,
      @JsonKey(name: 'educational_background') String? educationalBackground,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'doctor_schedules') List<DoctorSchedule>? doctorSchedules,
      Specialization? specialization});

  @override
  $SpecializationCopyWith<$Res>? get specialization;
}

/// @nodoc
class __$$DoctorImplCopyWithImpl<$Res>
    extends _$DoctorCopyWithImpl<$Res, _$DoctorImpl>
    implements _$$DoctorImplCopyWith<$Res> {
  __$$DoctorImplCopyWithImpl(
      _$DoctorImpl _value, $Res Function(_$DoctorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? doctorName = freezed,
    Object? photo = freezed,
    Object? specializationId = freezed,
    Object? description = freezed,
    Object? medicalTreatment = freezed,
    Object? practicalExperience = freezed,
    Object? educationalBackground = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? doctorSchedules = freezed,
    Object? specialization = freezed,
  }) {
    return _then(_$DoctorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      doctorName: freezed == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      specializationId: freezed == specializationId
          ? _value.specializationId
          : specializationId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      medicalTreatment: freezed == medicalTreatment
          ? _value.medicalTreatment
          : medicalTreatment // ignore: cast_nullable_to_non_nullable
              as String?,
      practicalExperience: freezed == practicalExperience
          ? _value.practicalExperience
          : practicalExperience // ignore: cast_nullable_to_non_nullable
              as String?,
      educationalBackground: freezed == educationalBackground
          ? _value.educationalBackground
          : educationalBackground // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      doctorSchedules: freezed == doctorSchedules
          ? _value._doctorSchedules
          : doctorSchedules // ignore: cast_nullable_to_non_nullable
              as List<DoctorSchedule>?,
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as Specialization?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorImpl implements _Doctor {
  _$DoctorImpl(
      {this.id,
      @JsonKey(name: 'doctor_name') this.doctorName,
      this.photo,
      @JsonKey(name: 'specialization_id') this.specializationId,
      this.description,
      @JsonKey(name: 'medical_treatment') this.medicalTreatment,
      @JsonKey(name: 'practical_experience') this.practicalExperience,
      @JsonKey(name: 'educational_background') this.educationalBackground,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'doctor_schedules')
      final List<DoctorSchedule>? doctorSchedules,
      this.specialization})
      : _doctorSchedules = doctorSchedules;

  factory _$DoctorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'doctor_name')
  final String? doctorName;
  @override
  final dynamic photo;
  @override
  @JsonKey(name: 'specialization_id')
  final int? specializationId;
  @override
  final String? description;
  @override
  @JsonKey(name: 'medical_treatment')
  final String? medicalTreatment;
  @override
  @JsonKey(name: 'practical_experience')
  final String? practicalExperience;
  @override
  @JsonKey(name: 'educational_background')
  final String? educationalBackground;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  final List<DoctorSchedule>? _doctorSchedules;
  @override
  @JsonKey(name: 'doctor_schedules')
  List<DoctorSchedule>? get doctorSchedules {
    final value = _doctorSchedules;
    if (value == null) return null;
    if (_doctorSchedules is EqualUnmodifiableListView) return _doctorSchedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Specialization? specialization;

  @override
  String toString() {
    return 'Doctor(id: $id, doctorName: $doctorName, photo: $photo, specializationId: $specializationId, description: $description, medicalTreatment: $medicalTreatment, practicalExperience: $practicalExperience, educationalBackground: $educationalBackground, createdAt: $createdAt, updatedAt: $updatedAt, doctorSchedules: $doctorSchedules, specialization: $specialization)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            (identical(other.specializationId, specializationId) ||
                other.specializationId == specializationId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.medicalTreatment, medicalTreatment) ||
                other.medicalTreatment == medicalTreatment) &&
            (identical(other.practicalExperience, practicalExperience) ||
                other.practicalExperience == practicalExperience) &&
            (identical(other.educationalBackground, educationalBackground) ||
                other.educationalBackground == educationalBackground) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._doctorSchedules, _doctorSchedules) &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      doctorName,
      const DeepCollectionEquality().hash(photo),
      specializationId,
      description,
      medicalTreatment,
      practicalExperience,
      educationalBackground,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_doctorSchedules),
      specialization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      __$$DoctorImplCopyWithImpl<_$DoctorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorImplToJson(
      this,
    );
  }
}

abstract class _Doctor implements Doctor {
  factory _Doctor(
      {final int? id,
      @JsonKey(name: 'doctor_name') final String? doctorName,
      final dynamic photo,
      @JsonKey(name: 'specialization_id') final int? specializationId,
      final String? description,
      @JsonKey(name: 'medical_treatment') final String? medicalTreatment,
      @JsonKey(name: 'practical_experience') final String? practicalExperience,
      @JsonKey(name: 'educational_background')
      final String? educationalBackground,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'doctor_schedules')
      final List<DoctorSchedule>? doctorSchedules,
      final Specialization? specialization}) = _$DoctorImpl;

  factory _Doctor.fromJson(Map<String, dynamic> json) = _$DoctorImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'doctor_name')
  String? get doctorName;
  @override
  dynamic get photo;
  @override
  @JsonKey(name: 'specialization_id')
  int? get specializationId;
  @override
  String? get description;
  @override
  @JsonKey(name: 'medical_treatment')
  String? get medicalTreatment;
  @override
  @JsonKey(name: 'practical_experience')
  String? get practicalExperience;
  @override
  @JsonKey(name: 'educational_background')
  String? get educationalBackground;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'doctor_schedules')
  List<DoctorSchedule>? get doctorSchedules;
  @override
  Specialization? get specialization;
  @override
  @JsonKey(ignore: true)
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
