// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_order_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientOrderListState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<Order> get orders => throw _privateConstructorUsedError;
  set orders(List<Order> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientOrderListStateCopyWith<PatientOrderListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientOrderListStateCopyWith<$Res> {
  factory $PatientOrderListStateCopyWith(PatientOrderListState value,
          $Res Function(PatientOrderListState) then) =
      _$PatientOrderListStateCopyWithImpl<$Res, PatientOrderListState>;
  @useResult
  $Res call({int counter, List<Order> orders});
}

/// @nodoc
class _$PatientOrderListStateCopyWithImpl<$Res,
        $Val extends PatientOrderListState>
    implements $PatientOrderListStateCopyWith<$Res> {
  _$PatientOrderListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? orders = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientOrderListStateImplCopyWith<$Res>
    implements $PatientOrderListStateCopyWith<$Res> {
  factory _$$PatientOrderListStateImplCopyWith(
          _$PatientOrderListStateImpl value,
          $Res Function(_$PatientOrderListStateImpl) then) =
      __$$PatientOrderListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, List<Order> orders});
}

/// @nodoc
class __$$PatientOrderListStateImplCopyWithImpl<$Res>
    extends _$PatientOrderListStateCopyWithImpl<$Res,
        _$PatientOrderListStateImpl>
    implements _$$PatientOrderListStateImplCopyWith<$Res> {
  __$$PatientOrderListStateImplCopyWithImpl(_$PatientOrderListStateImpl _value,
      $Res Function(_$PatientOrderListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? orders = null,
  }) {
    return _then(_$PatientOrderListStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc

class _$PatientOrderListStateImpl implements _PatientOrderListState {
  _$PatientOrderListStateImpl({this.counter = 0, this.orders = const []});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<Order> orders;

  @override
  String toString() {
    return 'PatientOrderListState(counter: $counter, orders: $orders)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientOrderListStateImplCopyWith<_$PatientOrderListStateImpl>
      get copyWith => __$$PatientOrderListStateImplCopyWithImpl<
          _$PatientOrderListStateImpl>(this, _$identity);
}

abstract class _PatientOrderListState implements PatientOrderListState {
  factory _PatientOrderListState({int counter, List<Order> orders}) =
      _$PatientOrderListStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  List<Order> get orders;
  set orders(List<Order> value);
  @override
  @JsonKey(ignore: true)
  _$$PatientOrderListStateImplCopyWith<_$PatientOrderListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
