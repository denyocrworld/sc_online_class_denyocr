// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_category_crud_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductCategoryCrudFormState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  bool get isEditMode => throw _privateConstructorUsedError;
  set isEditMode(bool value) => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get productCategoryName => throw _privateConstructorUsedError;
  set productCategoryName(String? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCategoryCrudFormStateCopyWith<ProductCategoryCrudFormState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryCrudFormStateCopyWith<$Res> {
  factory $ProductCategoryCrudFormStateCopyWith(
          ProductCategoryCrudFormState value,
          $Res Function(ProductCategoryCrudFormState) then) =
      _$ProductCategoryCrudFormStateCopyWithImpl<$Res,
          ProductCategoryCrudFormState>;
  @useResult
  $Res call(
      {int counter, bool isEditMode, String? id, String? productCategoryName});
}

/// @nodoc
class _$ProductCategoryCrudFormStateCopyWithImpl<$Res,
        $Val extends ProductCategoryCrudFormState>
    implements $ProductCategoryCrudFormStateCopyWith<$Res> {
  _$ProductCategoryCrudFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? isEditMode = null,
    Object? id = freezed,
    Object? productCategoryName = freezed,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      isEditMode: null == isEditMode
          ? _value.isEditMode
          : isEditMode // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productCategoryName: freezed == productCategoryName
          ? _value.productCategoryName
          : productCategoryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductCategoryCrudFormStateImplCopyWith<$Res>
    implements $ProductCategoryCrudFormStateCopyWith<$Res> {
  factory _$$ProductCategoryCrudFormStateImplCopyWith(
          _$ProductCategoryCrudFormStateImpl value,
          $Res Function(_$ProductCategoryCrudFormStateImpl) then) =
      __$$ProductCategoryCrudFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int counter, bool isEditMode, String? id, String? productCategoryName});
}

/// @nodoc
class __$$ProductCategoryCrudFormStateImplCopyWithImpl<$Res>
    extends _$ProductCategoryCrudFormStateCopyWithImpl<$Res,
        _$ProductCategoryCrudFormStateImpl>
    implements _$$ProductCategoryCrudFormStateImplCopyWith<$Res> {
  __$$ProductCategoryCrudFormStateImplCopyWithImpl(
      _$ProductCategoryCrudFormStateImpl _value,
      $Res Function(_$ProductCategoryCrudFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? isEditMode = null,
    Object? id = freezed,
    Object? productCategoryName = freezed,
  }) {
    return _then(_$ProductCategoryCrudFormStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      isEditMode: null == isEditMode
          ? _value.isEditMode
          : isEditMode // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productCategoryName: freezed == productCategoryName
          ? _value.productCategoryName
          : productCategoryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProductCategoryCrudFormStateImpl
    implements _ProductCategoryCrudFormState {
  _$ProductCategoryCrudFormStateImpl(
      {this.counter = 0,
      this.isEditMode = false,
      this.id = null,
      this.productCategoryName = null});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  bool isEditMode;
  @override
  @JsonKey()
  String? id;
  @override
  @JsonKey()
  String? productCategoryName;

  @override
  String toString() {
    return 'ProductCategoryCrudFormState(counter: $counter, isEditMode: $isEditMode, id: $id, productCategoryName: $productCategoryName)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryCrudFormStateImplCopyWith<
          _$ProductCategoryCrudFormStateImpl>
      get copyWith => __$$ProductCategoryCrudFormStateImplCopyWithImpl<
          _$ProductCategoryCrudFormStateImpl>(this, _$identity);
}

abstract class _ProductCategoryCrudFormState
    implements ProductCategoryCrudFormState {
  factory _ProductCategoryCrudFormState(
      {int counter,
      bool isEditMode,
      String? id,
      String? productCategoryName}) = _$ProductCategoryCrudFormStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  bool get isEditMode;
  set isEditMode(bool value);
  @override
  String? get id;
  set id(String? value);
  @override
  String? get productCategoryName;
  set productCategoryName(String? value);
  @override
  @JsonKey(ignore: true)
  _$$ProductCategoryCrudFormStateImplCopyWith<
          _$ProductCategoryCrudFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
