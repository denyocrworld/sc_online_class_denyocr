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
  $Res call({int counter});
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
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
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
  $Res call({int counter});
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
  }) {
    return _then(_$PatientDoctorDetailStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PatientDoctorDetailStateImpl implements _PatientDoctorDetailState {
  _$PatientDoctorDetailStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'PatientDoctorDetailState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientDoctorDetailStateImplCopyWith<_$PatientDoctorDetailStateImpl>
      get copyWith => __$$PatientDoctorDetailStateImplCopyWithImpl<
          _$PatientDoctorDetailStateImpl>(this, _$identity);
}

abstract class _PatientDoctorDetailState implements PatientDoctorDetailState {
  factory _PatientDoctorDetailState({int counter}) =
      _$PatientDoctorDetailStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$PatientDoctorDetailStateImplCopyWith<_$PatientDoctorDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
