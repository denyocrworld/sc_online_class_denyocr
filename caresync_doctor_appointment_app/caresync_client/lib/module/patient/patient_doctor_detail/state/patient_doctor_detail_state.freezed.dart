// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_doctor_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientDoctorDetailState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  DoctorSchedule? get schedule => throw _privateConstructorUsedError;
  set schedule(DoctorSchedule? value) => throw _privateConstructorUsedError;
  Doctor? get doctor => throw _privateConstructorUsedError;
  set doctor(Doctor? value) => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  set startTime(String? value) => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  set endTime(String? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientDoctorDetailStateCopyWith<PatientDoctorDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientDoctorDetailStateCopyWith<$Res> {
  factory $PatientDoctorDetailStateCopyWith(PatientDoctorDetailState value,
          $Res Function(PatientDoctorDetailState) then) =
      _$PatientDoctorDetailStateCopyWithImpl<$Res, PatientDoctorDetailState>;
  @useResult
  $Res call(
      {int counter,
      DoctorSchedule? schedule,
      Doctor? doctor,
      String? startTime,
      String? endTime});

  $DoctorScheduleCopyWith<$Res>? get schedule;
  $DoctorCopyWith<$Res>? get doctor;
}

/// @nodoc
class _$PatientDoctorDetailStateCopyWithImpl<$Res,
        $Val extends PatientDoctorDetailState>
    implements $PatientDoctorDetailStateCopyWith<$Res> {
  _$PatientDoctorDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? schedule = freezed,
    Object? doctor = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as DoctorSchedule?,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorScheduleCopyWith<$Res>? get schedule {
    if (_value.schedule == null) {
      return null;
    }

    return $DoctorScheduleCopyWith<$Res>(_value.schedule!, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorCopyWith<$Res>? get doctor {
    if (_value.doctor == null) {
      return null;
    }

    return $DoctorCopyWith<$Res>(_value.doctor!, (value) {
      return _then(_value.copyWith(doctor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientDoctorDetailStateImplCopyWith<$Res>
    implements $PatientDoctorDetailStateCopyWith<$Res> {
  factory _$$PatientDoctorDetailStateImplCopyWith(
          _$PatientDoctorDetailStateImpl value,
          $Res Function(_$PatientDoctorDetailStateImpl) then) =
      __$$PatientDoctorDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int counter,
      DoctorSchedule? schedule,
      Doctor? doctor,
      String? startTime,
      String? endTime});

  @override
  $DoctorScheduleCopyWith<$Res>? get schedule;
  @override
  $DoctorCopyWith<$Res>? get doctor;
}

/// @nodoc
class __$$PatientDoctorDetailStateImplCopyWithImpl<$Res>
    extends _$PatientDoctorDetailStateCopyWithImpl<$Res,
        _$PatientDoctorDetailStateImpl>
    implements _$$PatientDoctorDetailStateImplCopyWith<$Res> {
  __$$PatientDoctorDetailStateImplCopyWithImpl(
      _$PatientDoctorDetailStateImpl _value,
      $Res Function(_$PatientDoctorDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? schedule = freezed,
    Object? doctor = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$PatientDoctorDetailStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as DoctorSchedule?,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PatientDoctorDetailStateImpl implements _PatientDoctorDetailState {
  _$PatientDoctorDetailStateImpl(
      {this.counter = 0,
      this.schedule = null,
      this.doctor = null,
      this.startTime = null,
      this.endTime = null});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  DoctorSchedule? schedule;
  @override
  @JsonKey()
  Doctor? doctor;
  @override
  @JsonKey()
  String? startTime;
  @override
  @JsonKey()
  String? endTime;

  @override
  String toString() {
    return 'PatientDoctorDetailState(counter: $counter, schedule: $schedule, doctor: $doctor, startTime: $startTime, endTime: $endTime)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientDoctorDetailStateImplCopyWith<_$PatientDoctorDetailStateImpl>
      get copyWith => __$$PatientDoctorDetailStateImplCopyWithImpl<
          _$PatientDoctorDetailStateImpl>(this, _$identity);
}

abstract class _PatientDoctorDetailState implements PatientDoctorDetailState {
  factory _PatientDoctorDetailState(
      {int counter,
      DoctorSchedule? schedule,
      Doctor? doctor,
      String? startTime,
      String? endTime}) = _$PatientDoctorDetailStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  DoctorSchedule? get schedule;
  set schedule(DoctorSchedule? value);
  @override
  Doctor? get doctor;
  set doctor(Doctor? value);
  @override
  String? get startTime;
  set startTime(String? value);
  @override
  String? get endTime;
  set endTime(String? value);
  @override
  @JsonKey(ignore: true)
  _$$PatientDoctorDetailStateImplCopyWith<_$PatientDoctorDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
