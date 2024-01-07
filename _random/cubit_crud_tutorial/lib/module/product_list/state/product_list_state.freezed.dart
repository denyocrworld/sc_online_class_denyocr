// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductListState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<dynamic> get products => throw _privateConstructorUsedError;
  set products(List<dynamic> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductListStateCopyWith<ProductListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListStateCopyWith<$Res> {
  factory $ProductListStateCopyWith(
          ProductListState value, $Res Function(ProductListState) then) =
      _$ProductListStateCopyWithImpl<$Res, ProductListState>;
  @useResult
  $Res call({int counter, List<dynamic> products});
}

/// @nodoc
class _$ProductListStateCopyWithImpl<$Res, $Val extends ProductListState>
    implements $ProductListStateCopyWith<$Res> {
  _$ProductListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListStateImplCopyWith<$Res>
    implements $ProductListStateCopyWith<$Res> {
  factory _$$ProductListStateImplCopyWith(_$ProductListStateImpl value,
          $Res Function(_$ProductListStateImpl) then) =
      __$$ProductListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, List<dynamic> products});
}

/// @nodoc
class __$$ProductListStateImplCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res, _$ProductListStateImpl>
    implements _$$ProductListStateImplCopyWith<$Res> {
  __$$ProductListStateImplCopyWithImpl(_$ProductListStateImpl _value,
      $Res Function(_$ProductListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? products = null,
  }) {
    return _then(_$ProductListStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$ProductListStateImpl implements _ProductListState {
  _$ProductListStateImpl({this.counter = 0, this.products = const []});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<dynamic> products;

  @override
  String toString() {
    return 'ProductListState(counter: $counter, products: $products)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListStateImplCopyWith<_$ProductListStateImpl> get copyWith =>
      __$$ProductListStateImplCopyWithImpl<_$ProductListStateImpl>(
          this, _$identity);
}

abstract class _ProductListState implements ProductListState {
  factory _ProductListState({int counter, List<dynamic> products}) =
      _$ProductListStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  List<dynamic> get products;
  set products(List<dynamic> value);
  @override
  @JsonKey(ignore: true)
  _$$ProductListStateImplCopyWith<_$ProductListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
