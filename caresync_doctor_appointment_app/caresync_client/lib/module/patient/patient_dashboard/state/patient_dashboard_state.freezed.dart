// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientDashboardState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientDashboardStateCopyWith<PatientDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientDashboardStateCopyWith<$Res> {
  factory $PatientDashboardStateCopyWith(PatientDashboardState value,
          $Res Function(PatientDashboardState) then) =
      _$PatientDashboardStateCopyWithImpl<$Res, PatientDashboardState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$PatientDashboardStateCopyWithImpl<$Res,
        $Val extends PatientDashboardState>
    implements $PatientDashboardStateCopyWith<$Res> {
  _$PatientDashboardStateCopyWithImpl(this._value, this._then);

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
abstract class _$$PatientDashboardStateImplCopyWith<$Res>
    implements $PatientDashboardStateCopyWith<$Res> {
  factory _$$PatientDashboardStateImplCopyWith(
          _$PatientDashboardStateImpl value,
          $Res Function(_$PatientDashboardStateImpl) then) =
      __$$PatientDashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$PatientDashboardStateImplCopyWithImpl<$Res>
    extends _$PatientDashboardStateCopyWithImpl<$Res,
        _$PatientDashboardStateImpl>
    implements _$$PatientDashboardStateImplCopyWith<$Res> {
  __$$PatientDashboardStateImplCopyWithImpl(_$PatientDashboardStateImpl _value,
      $Res Function(_$PatientDashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$PatientDashboardStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PatientDashboardStateImpl implements _PatientDashboardState {
  _$PatientDashboardStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'PatientDashboardState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientDashboardStateImplCopyWith<_$PatientDashboardStateImpl>
      get copyWith => __$$PatientDashboardStateImplCopyWithImpl<
          _$PatientDashboardStateImpl>(this, _$identity);
}

abstract class _PatientDashboardState implements PatientDashboardState {
  factory _PatientDashboardState({int counter}) = _$PatientDashboardStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$PatientDashboardStateImplCopyWith<_$PatientDashboardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
