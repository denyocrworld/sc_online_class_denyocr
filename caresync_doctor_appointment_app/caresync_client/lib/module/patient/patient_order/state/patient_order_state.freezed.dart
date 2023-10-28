// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientOrderState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientOrderStateCopyWith<PatientOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientOrderStateCopyWith<$Res> {
  factory $PatientOrderStateCopyWith(
          PatientOrderState value, $Res Function(PatientOrderState) then) =
      _$PatientOrderStateCopyWithImpl<$Res, PatientOrderState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$PatientOrderStateCopyWithImpl<$Res, $Val extends PatientOrderState>
    implements $PatientOrderStateCopyWith<$Res> {
  _$PatientOrderStateCopyWithImpl(this._value, this._then);

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
abstract class _$$PatientOrderStateImplCopyWith<$Res>
    implements $PatientOrderStateCopyWith<$Res> {
  factory _$$PatientOrderStateImplCopyWith(_$PatientOrderStateImpl value,
          $Res Function(_$PatientOrderStateImpl) then) =
      __$$PatientOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$PatientOrderStateImplCopyWithImpl<$Res>
    extends _$PatientOrderStateCopyWithImpl<$Res, _$PatientOrderStateImpl>
    implements _$$PatientOrderStateImplCopyWith<$Res> {
  __$$PatientOrderStateImplCopyWithImpl(_$PatientOrderStateImpl _value,
      $Res Function(_$PatientOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$PatientOrderStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PatientOrderStateImpl implements _PatientOrderState {
  _$PatientOrderStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'PatientOrderState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientOrderStateImplCopyWith<_$PatientOrderStateImpl> get copyWith =>
      __$$PatientOrderStateImplCopyWithImpl<_$PatientOrderStateImpl>(
          this, _$identity);
}

abstract class _PatientOrderState implements PatientOrderState {
  factory _PatientOrderState({int counter}) = _$PatientOrderStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$PatientOrderStateImplCopyWith<_$PatientOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
