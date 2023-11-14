// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoctorDashboardState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorDashboardStateCopyWith<DoctorDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorDashboardStateCopyWith<$Res> {
  factory $DoctorDashboardStateCopyWith(DoctorDashboardState value,
          $Res Function(DoctorDashboardState) then) =
      _$DoctorDashboardStateCopyWithImpl<$Res, DoctorDashboardState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$DoctorDashboardStateCopyWithImpl<$Res,
        $Val extends DoctorDashboardState>
    implements $DoctorDashboardStateCopyWith<$Res> {
  _$DoctorDashboardStateCopyWithImpl(this._value, this._then);

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
abstract class _$$DoctorDashboardStateImplCopyWith<$Res>
    implements $DoctorDashboardStateCopyWith<$Res> {
  factory _$$DoctorDashboardStateImplCopyWith(_$DoctorDashboardStateImpl value,
          $Res Function(_$DoctorDashboardStateImpl) then) =
      __$$DoctorDashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$DoctorDashboardStateImplCopyWithImpl<$Res>
    extends _$DoctorDashboardStateCopyWithImpl<$Res, _$DoctorDashboardStateImpl>
    implements _$$DoctorDashboardStateImplCopyWith<$Res> {
  __$$DoctorDashboardStateImplCopyWithImpl(_$DoctorDashboardStateImpl _value,
      $Res Function(_$DoctorDashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$DoctorDashboardStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DoctorDashboardStateImpl implements _DoctorDashboardState {
  _$DoctorDashboardStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'DoctorDashboardState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorDashboardStateImplCopyWith<_$DoctorDashboardStateImpl>
      get copyWith =>
          __$$DoctorDashboardStateImplCopyWithImpl<_$DoctorDashboardStateImpl>(
              this, _$identity);
}

abstract class _DoctorDashboardState implements DoctorDashboardState {
  factory _DoctorDashboardState({int counter}) = _$DoctorDashboardStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$DoctorDashboardStateImplCopyWith<_$DoctorDashboardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
