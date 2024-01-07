// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_manager_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataManagerState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataManagerStateCopyWith<DataManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataManagerStateCopyWith<$Res> {
  factory $DataManagerStateCopyWith(
          DataManagerState value, $Res Function(DataManagerState) then) =
      _$DataManagerStateCopyWithImpl<$Res, DataManagerState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$DataManagerStateCopyWithImpl<$Res, $Val extends DataManagerState>
    implements $DataManagerStateCopyWith<$Res> {
  _$DataManagerStateCopyWithImpl(this._value, this._then);

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
abstract class _$$DataManagerStateImplCopyWith<$Res>
    implements $DataManagerStateCopyWith<$Res> {
  factory _$$DataManagerStateImplCopyWith(_$DataManagerStateImpl value,
          $Res Function(_$DataManagerStateImpl) then) =
      __$$DataManagerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$DataManagerStateImplCopyWithImpl<$Res>
    extends _$DataManagerStateCopyWithImpl<$Res, _$DataManagerStateImpl>
    implements _$$DataManagerStateImplCopyWith<$Res> {
  __$$DataManagerStateImplCopyWithImpl(_$DataManagerStateImpl _value,
      $Res Function(_$DataManagerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$DataManagerStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DataManagerStateImpl implements _DataManagerState {
  _$DataManagerStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'DataManagerState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataManagerStateImplCopyWith<_$DataManagerStateImpl> get copyWith =>
      __$$DataManagerStateImplCopyWithImpl<_$DataManagerStateImpl>(
          this, _$identity);
}

abstract class _DataManagerState implements DataManagerState {
  factory _DataManagerState({int counter}) = _$DataManagerStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$DataManagerStateImplCopyWith<_$DataManagerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
