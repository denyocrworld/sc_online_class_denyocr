// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_main_navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoctorMainNavigationState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorMainNavigationStateCopyWith<DoctorMainNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorMainNavigationStateCopyWith<$Res> {
  factory $DoctorMainNavigationStateCopyWith(DoctorMainNavigationState value,
          $Res Function(DoctorMainNavigationState) then) =
      _$DoctorMainNavigationStateCopyWithImpl<$Res, DoctorMainNavigationState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$DoctorMainNavigationStateCopyWithImpl<$Res,
        $Val extends DoctorMainNavigationState>
    implements $DoctorMainNavigationStateCopyWith<$Res> {
  _$DoctorMainNavigationStateCopyWithImpl(this._value, this._then);

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
abstract class _$$DoctorMainNavigationStateImplCopyWith<$Res>
    implements $DoctorMainNavigationStateCopyWith<$Res> {
  factory _$$DoctorMainNavigationStateImplCopyWith(
          _$DoctorMainNavigationStateImpl value,
          $Res Function(_$DoctorMainNavigationStateImpl) then) =
      __$$DoctorMainNavigationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$DoctorMainNavigationStateImplCopyWithImpl<$Res>
    extends _$DoctorMainNavigationStateCopyWithImpl<$Res,
        _$DoctorMainNavigationStateImpl>
    implements _$$DoctorMainNavigationStateImplCopyWith<$Res> {
  __$$DoctorMainNavigationStateImplCopyWithImpl(
      _$DoctorMainNavigationStateImpl _value,
      $Res Function(_$DoctorMainNavigationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$DoctorMainNavigationStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DoctorMainNavigationStateImpl implements _DoctorMainNavigationState {
  _$DoctorMainNavigationStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'DoctorMainNavigationState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorMainNavigationStateImplCopyWith<_$DoctorMainNavigationStateImpl>
      get copyWith => __$$DoctorMainNavigationStateImplCopyWithImpl<
          _$DoctorMainNavigationStateImpl>(this, _$identity);
}

abstract class _DoctorMainNavigationState implements DoctorMainNavigationState {
  factory _DoctorMainNavigationState({int counter}) =
      _$DoctorMainNavigationStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$DoctorMainNavigationStateImplCopyWith<_$DoctorMainNavigationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
