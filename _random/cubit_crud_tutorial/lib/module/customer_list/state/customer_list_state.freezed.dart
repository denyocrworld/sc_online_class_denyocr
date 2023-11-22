// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerListState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerListStateCopyWith<CustomerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerListStateCopyWith<$Res> {
  factory $CustomerListStateCopyWith(
          CustomerListState value, $Res Function(CustomerListState) then) =
      _$CustomerListStateCopyWithImpl<$Res, CustomerListState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$CustomerListStateCopyWithImpl<$Res, $Val extends CustomerListState>
    implements $CustomerListStateCopyWith<$Res> {
  _$CustomerListStateCopyWithImpl(this._value, this._then);

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
abstract class _$$CustomerListStateImplCopyWith<$Res>
    implements $CustomerListStateCopyWith<$Res> {
  factory _$$CustomerListStateImplCopyWith(_$CustomerListStateImpl value,
          $Res Function(_$CustomerListStateImpl) then) =
      __$$CustomerListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$CustomerListStateImplCopyWithImpl<$Res>
    extends _$CustomerListStateCopyWithImpl<$Res, _$CustomerListStateImpl>
    implements _$$CustomerListStateImplCopyWith<$Res> {
  __$$CustomerListStateImplCopyWithImpl(_$CustomerListStateImpl _value,
      $Res Function(_$CustomerListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$CustomerListStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CustomerListStateImpl implements _CustomerListState {
  _$CustomerListStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'CustomerListState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerListStateImplCopyWith<_$CustomerListStateImpl> get copyWith =>
      __$$CustomerListStateImplCopyWithImpl<_$CustomerListStateImpl>(
          this, _$identity);
}

abstract class _CustomerListState implements CustomerListState {
  factory _CustomerListState({int counter}) = _$CustomerListStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$CustomerListStateImplCopyWith<_$CustomerListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
