// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_category_crud_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductCategoryCrudListState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  String get search => throw _privateConstructorUsedError;
  set search(String value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCategoryCrudListStateCopyWith<ProductCategoryCrudListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryCrudListStateCopyWith<$Res> {
  factory $ProductCategoryCrudListStateCopyWith(
          ProductCategoryCrudListState value,
          $Res Function(ProductCategoryCrudListState) then) =
      _$ProductCategoryCrudListStateCopyWithImpl<$Res,
          ProductCategoryCrudListState>;
  @useResult
  $Res call({int counter, String search});
}

/// @nodoc
class _$ProductCategoryCrudListStateCopyWithImpl<$Res,
        $Val extends ProductCategoryCrudListState>
    implements $ProductCategoryCrudListStateCopyWith<$Res> {
  _$ProductCategoryCrudListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? search = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductCategoryCrudListStateImplCopyWith<$Res>
    implements $ProductCategoryCrudListStateCopyWith<$Res> {
  factory _$$ProductCategoryCrudListStateImplCopyWith(
          _$ProductCategoryCrudListStateImpl value,
          $Res Function(_$ProductCategoryCrudListStateImpl) then) =
      __$$ProductCategoryCrudListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, String search});
}

/// @nodoc
class __$$ProductCategoryCrudListStateImplCopyWithImpl<$Res>
    extends _$ProductCategoryCrudListStateCopyWithImpl<$Res,
        _$ProductCategoryCrudListStateImpl>
    implements _$$ProductCategoryCrudListStateImplCopyWith<$Res> {
  __$$ProductCategoryCrudListStateImplCopyWithImpl(
      _$ProductCategoryCrudListStateImpl _value,
      $Res Function(_$ProductCategoryCrudListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? search = null,
  }) {
    return _then(_$ProductCategoryCrudListStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductCategoryCrudListStateImpl
    implements _ProductCategoryCrudListState {
  _$ProductCategoryCrudListStateImpl({this.counter = 0, this.search = ""});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  String search;

  @override
  String toString() {
    return 'ProductCategoryCrudListState(counter: $counter, search: $search)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryCrudListStateImplCopyWith<
          _$ProductCategoryCrudListStateImpl>
      get copyWith => __$$ProductCategoryCrudListStateImplCopyWithImpl<
          _$ProductCategoryCrudListStateImpl>(this, _$identity);
}

abstract class _ProductCategoryCrudListState
    implements ProductCategoryCrudListState {
  factory _ProductCategoryCrudListState({int counter, String search}) =
      _$ProductCategoryCrudListStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  String get search;
  set search(String value);
  @override
  @JsonKey(ignore: true)
  _$$ProductCategoryCrudListStateImplCopyWith<
          _$ProductCategoryCrudListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
