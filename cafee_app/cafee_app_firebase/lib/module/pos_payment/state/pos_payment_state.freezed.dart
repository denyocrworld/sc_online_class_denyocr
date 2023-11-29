// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosPaymentState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  String? get paymentUrl => throw _privateConstructorUsedError;
  set paymentUrl(String? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosPaymentStateCopyWith<PosPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosPaymentStateCopyWith<$Res> {
  factory $PosPaymentStateCopyWith(
          PosPaymentState value, $Res Function(PosPaymentState) then) =
      _$PosPaymentStateCopyWithImpl<$Res, PosPaymentState>;
  @useResult
  $Res call({int counter, String? paymentUrl});
}

/// @nodoc
class _$PosPaymentStateCopyWithImpl<$Res, $Val extends PosPaymentState>
    implements $PosPaymentStateCopyWith<$Res> {
  _$PosPaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? paymentUrl = freezed,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PosPaymentStateImplCopyWith<$Res>
    implements $PosPaymentStateCopyWith<$Res> {
  factory _$$PosPaymentStateImplCopyWith(_$PosPaymentStateImpl value,
          $Res Function(_$PosPaymentStateImpl) then) =
      __$$PosPaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, String? paymentUrl});
}

/// @nodoc
class __$$PosPaymentStateImplCopyWithImpl<$Res>
    extends _$PosPaymentStateCopyWithImpl<$Res, _$PosPaymentStateImpl>
    implements _$$PosPaymentStateImplCopyWith<$Res> {
  __$$PosPaymentStateImplCopyWithImpl(
      _$PosPaymentStateImpl _value, $Res Function(_$PosPaymentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? paymentUrl = freezed,
  }) {
    return _then(_$PosPaymentStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PosPaymentStateImpl implements _PosPaymentState {
  _$PosPaymentStateImpl({this.counter = 0, this.paymentUrl = null});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  String? paymentUrl;

  @override
  String toString() {
    return 'PosPaymentState(counter: $counter, paymentUrl: $paymentUrl)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PosPaymentStateImplCopyWith<_$PosPaymentStateImpl> get copyWith =>
      __$$PosPaymentStateImplCopyWithImpl<_$PosPaymentStateImpl>(
          this, _$identity);
}

abstract class _PosPaymentState implements PosPaymentState {
  factory _PosPaymentState({int counter, String? paymentUrl}) =
      _$PosPaymentStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  String? get paymentUrl;
  set paymentUrl(String? value);
  @override
  @JsonKey(ignore: true)
  _$$PosPaymentStateImplCopyWith<_$PosPaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
