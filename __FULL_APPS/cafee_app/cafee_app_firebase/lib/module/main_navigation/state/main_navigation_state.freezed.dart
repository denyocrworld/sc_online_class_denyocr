// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainNavigationState {
  int get selectedIndex => throw _privateConstructorUsedError;
  set selectedIndex(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainNavigationStateCopyWith<MainNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainNavigationStateCopyWith<$Res> {
  factory $MainNavigationStateCopyWith(
          MainNavigationState value, $Res Function(MainNavigationState) then) =
      _$MainNavigationStateCopyWithImpl<$Res, MainNavigationState>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class _$MainNavigationStateCopyWithImpl<$Res, $Val extends MainNavigationState>
    implements $MainNavigationStateCopyWith<$Res> {
  _$MainNavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainNavigationStateImplCopyWith<$Res>
    implements $MainNavigationStateCopyWith<$Res> {
  factory _$$MainNavigationStateImplCopyWith(_$MainNavigationStateImpl value,
          $Res Function(_$MainNavigationStateImpl) then) =
      __$$MainNavigationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$MainNavigationStateImplCopyWithImpl<$Res>
    extends _$MainNavigationStateCopyWithImpl<$Res, _$MainNavigationStateImpl>
    implements _$$MainNavigationStateImplCopyWith<$Res> {
  __$$MainNavigationStateImplCopyWithImpl(_$MainNavigationStateImpl _value,
      $Res Function(_$MainNavigationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$MainNavigationStateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MainNavigationStateImpl implements _MainNavigationState {
  _$MainNavigationStateImpl({this.selectedIndex = 0});

  @override
  @JsonKey()
  int selectedIndex;

  @override
  String toString() {
    return 'MainNavigationState(selectedIndex: $selectedIndex)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainNavigationStateImplCopyWith<_$MainNavigationStateImpl> get copyWith =>
      __$$MainNavigationStateImplCopyWithImpl<_$MainNavigationStateImpl>(
          this, _$identity);
}

abstract class _MainNavigationState implements MainNavigationState {
  factory _MainNavigationState({int selectedIndex}) = _$MainNavigationStateImpl;

  @override
  int get selectedIndex;
  set selectedIndex(int value);
  @override
  @JsonKey(ignore: true)
  _$$MainNavigationStateImplCopyWith<_$MainNavigationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
