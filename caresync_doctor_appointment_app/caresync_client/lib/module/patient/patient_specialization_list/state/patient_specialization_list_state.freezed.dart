// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_specialization_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientSpecializationListState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<dynamic> get categories => throw _privateConstructorUsedError;
  set categories(List<dynamic> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientSpecializationListStateCopyWith<PatientSpecializationListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientSpecializationListStateCopyWith<$Res> {
  factory $PatientSpecializationListStateCopyWith(
          PatientSpecializationListState value,
          $Res Function(PatientSpecializationListState) then) =
      _$PatientSpecializationListStateCopyWithImpl<$Res,
          PatientSpecializationListState>;
  @useResult
  $Res call({int counter, List<dynamic> categories});
}

/// @nodoc
class _$PatientSpecializationListStateCopyWithImpl<$Res,
        $Val extends PatientSpecializationListState>
    implements $PatientSpecializationListStateCopyWith<$Res> {
  _$PatientSpecializationListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientSpecializationListStateImplCopyWith<$Res>
    implements $PatientSpecializationListStateCopyWith<$Res> {
  factory _$$PatientSpecializationListStateImplCopyWith(
          _$PatientSpecializationListStateImpl value,
          $Res Function(_$PatientSpecializationListStateImpl) then) =
      __$$PatientSpecializationListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, List<dynamic> categories});
}

/// @nodoc
class __$$PatientSpecializationListStateImplCopyWithImpl<$Res>
    extends _$PatientSpecializationListStateCopyWithImpl<$Res,
        _$PatientSpecializationListStateImpl>
    implements _$$PatientSpecializationListStateImplCopyWith<$Res> {
  __$$PatientSpecializationListStateImplCopyWithImpl(
      _$PatientSpecializationListStateImpl _value,
      $Res Function(_$PatientSpecializationListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
  }) {
    return _then(_$PatientSpecializationListStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$PatientSpecializationListStateImpl
    implements _PatientSpecializationListState {
  _$PatientSpecializationListStateImpl(
      {this.counter = 0,
      this.categories = const [
        'Cardiologist',
        'Dermatologist',
        'Gastroenterologist',
        'Neurologist',
        'Ophthalmologist',
        'Orthopedic Surgeon',
        'Otolaryngologist (ENT Specialist)',
        'Pediatrician',
        'Psychiatrist',
        'Pulmonologist',
        'Rheumatologist',
        'Endocrinologist',
        'Gynecologist',
        'Urologist',
        'Nephrologist',
        'Hematologist',
        'Allergist/Immunologist',
        'Infectious Disease Specialist',
        'Oncologist',
        'Geriatrician',
        'Pain Management Specialist',
        'Sports Medicine Physician',
        'Neonatologist',
        'Plastic Surgeon',
        'Anesthesiologist'
      ]});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<dynamic> categories;

  @override
  String toString() {
    return 'PatientSpecializationListState(counter: $counter, categories: $categories)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientSpecializationListStateImplCopyWith<
          _$PatientSpecializationListStateImpl>
      get copyWith => __$$PatientSpecializationListStateImplCopyWithImpl<
          _$PatientSpecializationListStateImpl>(this, _$identity);
}

abstract class _PatientSpecializationListState
    implements PatientSpecializationListState {
  factory _PatientSpecializationListState(
      {int counter,
      List<dynamic> categories}) = _$PatientSpecializationListStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  List<dynamic> get categories;
  set categories(List<dynamic> value);
  @override
  @JsonKey(ignore: true)
  _$$PatientSpecializationListStateImplCopyWith<
          _$PatientSpecializationListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
