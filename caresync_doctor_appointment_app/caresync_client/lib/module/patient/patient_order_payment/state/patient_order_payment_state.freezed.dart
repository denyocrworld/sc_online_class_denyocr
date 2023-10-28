// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_order_payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientOrderPaymentState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientOrderPaymentStateCopyWith<PatientOrderPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientOrderPaymentStateCopyWith<$Res> {
  factory $PatientOrderPaymentStateCopyWith(PatientOrderPaymentState value,
          $Res Function(PatientOrderPaymentState) then) =
      _$PatientOrderPaymentStateCopyWithImpl<$Res, PatientOrderPaymentState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$PatientOrderPaymentStateCopyWithImpl<$Res,
        $Val extends PatientOrderPaymentState>
    implements $PatientOrderPaymentStateCopyWith<$Res> {
  _$PatientOrderPaymentStateCopyWithImpl(this._value, this._then);

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
abstract class _$$PatientOrderPaymentStateImplCopyWith<$Res>
    implements $PatientOrderPaymentStateCopyWith<$Res> {
  factory _$$PatientOrderPaymentStateImplCopyWith(
          _$PatientOrderPaymentStateImpl value,
          $Res Function(_$PatientOrderPaymentStateImpl) then) =
      __$$PatientOrderPaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$PatientOrderPaymentStateImplCopyWithImpl<$Res>
    extends _$PatientOrderPaymentStateCopyWithImpl<$Res,
        _$PatientOrderPaymentStateImpl>
    implements _$$PatientOrderPaymentStateImplCopyWith<$Res> {
  __$$PatientOrderPaymentStateImplCopyWithImpl(
      _$PatientOrderPaymentStateImpl _value,
      $Res Function(_$PatientOrderPaymentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$PatientOrderPaymentStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PatientOrderPaymentStateImpl implements _PatientOrderPaymentState {
  _$PatientOrderPaymentStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'PatientOrderPaymentState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientOrderPaymentStateImplCopyWith<_$PatientOrderPaymentStateImpl>
      get copyWith => __$$PatientOrderPaymentStateImplCopyWithImpl<
          _$PatientOrderPaymentStateImpl>(this, _$identity);
}

abstract class _PatientOrderPaymentState implements PatientOrderPaymentState {
  factory _PatientOrderPaymentState({int counter}) =
      _$PatientOrderPaymentStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$PatientOrderPaymentStateImplCopyWith<_$PatientOrderPaymentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
