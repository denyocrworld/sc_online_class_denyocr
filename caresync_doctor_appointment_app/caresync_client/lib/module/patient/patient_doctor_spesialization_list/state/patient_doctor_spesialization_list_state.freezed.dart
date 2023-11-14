// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_doctor_spesialization_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientDoctorSpesializationListState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<Doctor> get doctorList => throw _privateConstructorUsedError;
  set doctorList(List<Doctor> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientDoctorSpesializationListStateCopyWith<
          PatientDoctorSpesializationListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientDoctorSpesializationListStateCopyWith<$Res> {
  factory $PatientDoctorSpesializationListStateCopyWith(
          PatientDoctorSpesializationListState value,
          $Res Function(PatientDoctorSpesializationListState) then) =
      _$PatientDoctorSpesializationListStateCopyWithImpl<$Res,
          PatientDoctorSpesializationListState>;
  @useResult
  $Res call({int counter, List<Doctor> doctorList});
}

/// @nodoc
class _$PatientDoctorSpesializationListStateCopyWithImpl<$Res,
        $Val extends PatientDoctorSpesializationListState>
    implements $PatientDoctorSpesializationListStateCopyWith<$Res> {
  _$PatientDoctorSpesializationListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? doctorList = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      doctorList: null == doctorList
          ? _value.doctorList
          : doctorList // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientDoctorSpesializationListStateImplCopyWith<$Res>
    implements $PatientDoctorSpesializationListStateCopyWith<$Res> {
  factory _$$PatientDoctorSpesializationListStateImplCopyWith(
          _$PatientDoctorSpesializationListStateImpl value,
          $Res Function(_$PatientDoctorSpesializationListStateImpl) then) =
      __$$PatientDoctorSpesializationListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, List<Doctor> doctorList});
}

/// @nodoc
class __$$PatientDoctorSpesializationListStateImplCopyWithImpl<$Res>
    extends _$PatientDoctorSpesializationListStateCopyWithImpl<$Res,
        _$PatientDoctorSpesializationListStateImpl>
    implements _$$PatientDoctorSpesializationListStateImplCopyWith<$Res> {
  __$$PatientDoctorSpesializationListStateImplCopyWithImpl(
      _$PatientDoctorSpesializationListStateImpl _value,
      $Res Function(_$PatientDoctorSpesializationListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? doctorList = null,
  }) {
    return _then(_$PatientDoctorSpesializationListStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      doctorList: null == doctorList
          ? _value.doctorList
          : doctorList // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
    ));
  }
}

/// @nodoc

class _$PatientDoctorSpesializationListStateImpl
    implements _PatientDoctorSpesializationListState {
  _$PatientDoctorSpesializationListStateImpl(
      {this.counter = 0, this.doctorList = const []});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<Doctor> doctorList;

  @override
  String toString() {
    return 'PatientDoctorSpesializationListState(counter: $counter, doctorList: $doctorList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientDoctorSpesializationListStateImplCopyWith<
          _$PatientDoctorSpesializationListStateImpl>
      get copyWith => __$$PatientDoctorSpesializationListStateImplCopyWithImpl<
          _$PatientDoctorSpesializationListStateImpl>(this, _$identity);
}

abstract class _PatientDoctorSpesializationListState
    implements PatientDoctorSpesializationListState {
  factory _PatientDoctorSpesializationListState(
      {int counter,
      List<Doctor> doctorList}) = _$PatientDoctorSpesializationListStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  List<Doctor> get doctorList;
  set doctorList(List<Doctor> value);
  @override
  @JsonKey(ignore: true)
  _$$PatientDoctorSpesializationListStateImplCopyWith<
          _$PatientDoctorSpesializationListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
