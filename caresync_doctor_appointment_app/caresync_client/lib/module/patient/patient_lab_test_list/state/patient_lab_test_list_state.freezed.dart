// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_lab_test_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientLabTestListState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientLabTestListStateCopyWith<PatientLabTestListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientLabTestListStateCopyWith<$Res> {
  factory $PatientLabTestListStateCopyWith(PatientLabTestListState value,
          $Res Function(PatientLabTestListState) then) =
      _$PatientLabTestListStateCopyWithImpl<$Res, PatientLabTestListState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$PatientLabTestListStateCopyWithImpl<$Res,
        $Val extends PatientLabTestListState>
    implements $PatientLabTestListStateCopyWith<$Res> {
  _$PatientLabTestListStateCopyWithImpl(this._value, this._then);

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
abstract class _$$PatientLabTestListStateImplCopyWith<$Res>
    implements $PatientLabTestListStateCopyWith<$Res> {
  factory _$$PatientLabTestListStateImplCopyWith(
          _$PatientLabTestListStateImpl value,
          $Res Function(_$PatientLabTestListStateImpl) then) =
      __$$PatientLabTestListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$PatientLabTestListStateImplCopyWithImpl<$Res>
    extends _$PatientLabTestListStateCopyWithImpl<$Res,
        _$PatientLabTestListStateImpl>
    implements _$$PatientLabTestListStateImplCopyWith<$Res> {
  __$$PatientLabTestListStateImplCopyWithImpl(
      _$PatientLabTestListStateImpl _value,
      $Res Function(_$PatientLabTestListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$PatientLabTestListStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PatientLabTestListStateImpl implements _PatientLabTestListState {
  _$PatientLabTestListStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'PatientLabTestListState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientLabTestListStateImplCopyWith<_$PatientLabTestListStateImpl>
      get copyWith => __$$PatientLabTestListStateImplCopyWithImpl<
          _$PatientLabTestListStateImpl>(this, _$identity);
}

abstract class _PatientLabTestListState implements PatientLabTestListState {
  factory _PatientLabTestListState({int counter}) =
      _$PatientLabTestListStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$PatientLabTestListStateImplCopyWith<_$PatientLabTestListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
