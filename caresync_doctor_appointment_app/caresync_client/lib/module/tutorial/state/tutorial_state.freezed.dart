// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tutorial_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TutorialState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TutorialStateCopyWith<TutorialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialStateCopyWith<$Res> {
  factory $TutorialStateCopyWith(
          TutorialState value, $Res Function(TutorialState) then) =
      _$TutorialStateCopyWithImpl<$Res, TutorialState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$TutorialStateCopyWithImpl<$Res, $Val extends TutorialState>
    implements $TutorialStateCopyWith<$Res> {
  _$TutorialStateCopyWithImpl(this._value, this._then);

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
abstract class _$$TutorialStateImplCopyWith<$Res>
    implements $TutorialStateCopyWith<$Res> {
  factory _$$TutorialStateImplCopyWith(
          _$TutorialStateImpl value, $Res Function(_$TutorialStateImpl) then) =
      __$$TutorialStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$TutorialStateImplCopyWithImpl<$Res>
    extends _$TutorialStateCopyWithImpl<$Res, _$TutorialStateImpl>
    implements _$$TutorialStateImplCopyWith<$Res> {
  __$$TutorialStateImplCopyWithImpl(
      _$TutorialStateImpl _value, $Res Function(_$TutorialStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$TutorialStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TutorialStateImpl implements _TutorialState {
  _$TutorialStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'TutorialState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialStateImplCopyWith<_$TutorialStateImpl> get copyWith =>
      __$$TutorialStateImplCopyWithImpl<_$TutorialStateImpl>(this, _$identity);
}

abstract class _TutorialState implements TutorialState {
  factory _TutorialState({int counter}) = _$TutorialStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$TutorialStateImplCopyWith<_$TutorialStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
