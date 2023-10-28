// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_order_patient_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientOrderPatientDataState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientOrderPatientDataStateCopyWith<PatientOrderPatientDataState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientOrderPatientDataStateCopyWith<$Res> {
  factory $PatientOrderPatientDataStateCopyWith(
          PatientOrderPatientDataState value,
          $Res Function(PatientOrderPatientDataState) then) =
      _$PatientOrderPatientDataStateCopyWithImpl<$Res,
          PatientOrderPatientDataState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$PatientOrderPatientDataStateCopyWithImpl<$Res,
        $Val extends PatientOrderPatientDataState>
    implements $PatientOrderPatientDataStateCopyWith<$Res> {
  _$PatientOrderPatientDataStateCopyWithImpl(this._value, this._then);

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
abstract class _$$PatientOrderPatientDataStateImplCopyWith<$Res>
    implements $PatientOrderPatientDataStateCopyWith<$Res> {
  factory _$$PatientOrderPatientDataStateImplCopyWith(
          _$PatientOrderPatientDataStateImpl value,
          $Res Function(_$PatientOrderPatientDataStateImpl) then) =
      __$$PatientOrderPatientDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$PatientOrderPatientDataStateImplCopyWithImpl<$Res>
    extends _$PatientOrderPatientDataStateCopyWithImpl<$Res,
        _$PatientOrderPatientDataStateImpl>
    implements _$$PatientOrderPatientDataStateImplCopyWith<$Res> {
  __$$PatientOrderPatientDataStateImplCopyWithImpl(
      _$PatientOrderPatientDataStateImpl _value,
      $Res Function(_$PatientOrderPatientDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$PatientOrderPatientDataStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PatientOrderPatientDataStateImpl
    implements _PatientOrderPatientDataState {
  _$PatientOrderPatientDataStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'PatientOrderPatientDataState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientOrderPatientDataStateImplCopyWith<
          _$PatientOrderPatientDataStateImpl>
      get copyWith => __$$PatientOrderPatientDataStateImplCopyWithImpl<
          _$PatientOrderPatientDataStateImpl>(this, _$identity);
}

abstract class _PatientOrderPatientDataState
    implements PatientOrderPatientDataState {
  factory _PatientOrderPatientDataState({int counter}) =
      _$PatientOrderPatientDataStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$PatientOrderPatientDataStateImplCopyWith<
          _$PatientOrderPatientDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
