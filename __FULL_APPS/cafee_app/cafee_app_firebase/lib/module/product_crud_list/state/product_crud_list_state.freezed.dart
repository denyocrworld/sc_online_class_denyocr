// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_crud_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductCrudListState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  String get search => throw _privateConstructorUsedError;
  set search(String value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCrudListStateCopyWith<ProductCrudListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCrudListStateCopyWith<$Res> {
  factory $ProductCrudListStateCopyWith(ProductCrudListState value,
          $Res Function(ProductCrudListState) then) =
      _$ProductCrudListStateCopyWithImpl<$Res, ProductCrudListState>;
  @useResult
  $Res call({int counter, String search});
}

/// @nodoc
class _$ProductCrudListStateCopyWithImpl<$Res,
        $Val extends ProductCrudListState>
    implements $ProductCrudListStateCopyWith<$Res> {
  _$ProductCrudListStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ProductCrudListStateImplCopyWith<$Res>
    implements $ProductCrudListStateCopyWith<$Res> {
  factory _$$ProductCrudListStateImplCopyWith(_$ProductCrudListStateImpl value,
          $Res Function(_$ProductCrudListStateImpl) then) =
      __$$ProductCrudListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, String search});
}

/// @nodoc
class __$$ProductCrudListStateImplCopyWithImpl<$Res>
    extends _$ProductCrudListStateCopyWithImpl<$Res, _$ProductCrudListStateImpl>
    implements _$$ProductCrudListStateImplCopyWith<$Res> {
  __$$ProductCrudListStateImplCopyWithImpl(_$ProductCrudListStateImpl _value,
      $Res Function(_$ProductCrudListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? search = null,
  }) {
    return _then(_$ProductCrudListStateImpl(
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

class _$ProductCrudListStateImpl implements _ProductCrudListState {
  _$ProductCrudListStateImpl({this.counter = 0, this.search = ""});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  String search;

  @override
  String toString() {
    return 'ProductCrudListState(counter: $counter, search: $search)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCrudListStateImplCopyWith<_$ProductCrudListStateImpl>
      get copyWith =>
          __$$ProductCrudListStateImplCopyWithImpl<_$ProductCrudListStateImpl>(
              this, _$identity);
}

abstract class _ProductCrudListState implements ProductCrudListState {
  factory _ProductCrudListState({int counter, String search}) =
      _$ProductCrudListStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  String get search;
  set search(String value);
  @override
  @JsonKey(ignore: true)
  _$$ProductCrudListStateImplCopyWith<_$ProductCrudListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
