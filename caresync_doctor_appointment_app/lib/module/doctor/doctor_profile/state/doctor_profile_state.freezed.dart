// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoctorProfileState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorProfileStateCopyWith<DoctorProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorProfileStateCopyWith<$Res> {
  factory $DoctorProfileStateCopyWith(
          DoctorProfileState value, $Res Function(DoctorProfileState) then) =
      _$DoctorProfileStateCopyWithImpl<$Res, DoctorProfileState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$DoctorProfileStateCopyWithImpl<$Res, $Val extends DoctorProfileState>
    implements $DoctorProfileStateCopyWith<$Res> {
  _$DoctorProfileStateCopyWithImpl(this._value, this._then);

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
abstract class _$$DoctorProfileStateImplCopyWith<$Res>
    implements $DoctorProfileStateCopyWith<$Res> {
  factory _$$DoctorProfileStateImplCopyWith(_$DoctorProfileStateImpl value,
          $Res Function(_$DoctorProfileStateImpl) then) =
      __$$DoctorProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$DoctorProfileStateImplCopyWithImpl<$Res>
    extends _$DoctorProfileStateCopyWithImpl<$Res, _$DoctorProfileStateImpl>
    implements _$$DoctorProfileStateImplCopyWith<$Res> {
  __$$DoctorProfileStateImplCopyWithImpl(_$DoctorProfileStateImpl _value,
      $Res Function(_$DoctorProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$DoctorProfileStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DoctorProfileStateImpl implements _DoctorProfileState {
  _$DoctorProfileStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'DoctorProfileState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorProfileStateImplCopyWith<_$DoctorProfileStateImpl> get copyWith =>
      __$$DoctorProfileStateImplCopyWithImpl<_$DoctorProfileStateImpl>(
          this, _$identity);
}

abstract class _DoctorProfileState implements DoctorProfileState {
  factory _DoctorProfileState({int counter}) = _$DoctorProfileStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$DoctorProfileStateImplCopyWith<_$DoctorProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
