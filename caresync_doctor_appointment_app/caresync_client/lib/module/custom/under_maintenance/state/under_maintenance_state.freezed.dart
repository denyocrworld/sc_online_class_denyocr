// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'under_maintenance_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UnderMaintenanceState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnderMaintenanceStateCopyWith<UnderMaintenanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnderMaintenanceStateCopyWith<$Res> {
  factory $UnderMaintenanceStateCopyWith(UnderMaintenanceState value,
          $Res Function(UnderMaintenanceState) then) =
      _$UnderMaintenanceStateCopyWithImpl<$Res, UnderMaintenanceState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$UnderMaintenanceStateCopyWithImpl<$Res,
        $Val extends UnderMaintenanceState>
    implements $UnderMaintenanceStateCopyWith<$Res> {
  _$UnderMaintenanceStateCopyWithImpl(this._value, this._then);

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
abstract class _$$UnderMaintenanceStateImplCopyWith<$Res>
    implements $UnderMaintenanceStateCopyWith<$Res> {
  factory _$$UnderMaintenanceStateImplCopyWith(
          _$UnderMaintenanceStateImpl value,
          $Res Function(_$UnderMaintenanceStateImpl) then) =
      __$$UnderMaintenanceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$UnderMaintenanceStateImplCopyWithImpl<$Res>
    extends _$UnderMaintenanceStateCopyWithImpl<$Res,
        _$UnderMaintenanceStateImpl>
    implements _$$UnderMaintenanceStateImplCopyWith<$Res> {
  __$$UnderMaintenanceStateImplCopyWithImpl(_$UnderMaintenanceStateImpl _value,
      $Res Function(_$UnderMaintenanceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$UnderMaintenanceStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnderMaintenanceStateImpl implements _UnderMaintenanceState {
  _$UnderMaintenanceStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'UnderMaintenanceState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnderMaintenanceStateImplCopyWith<_$UnderMaintenanceStateImpl>
      get copyWith => __$$UnderMaintenanceStateImplCopyWithImpl<
          _$UnderMaintenanceStateImpl>(this, _$identity);
}

abstract class _UnderMaintenanceState implements UnderMaintenanceState {
  factory _UnderMaintenanceState({int counter}) = _$UnderMaintenanceStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$UnderMaintenanceStateImplCopyWith<_$UnderMaintenanceStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
