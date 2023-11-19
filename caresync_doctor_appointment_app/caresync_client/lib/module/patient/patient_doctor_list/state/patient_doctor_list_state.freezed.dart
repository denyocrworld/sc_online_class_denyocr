// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_doctor_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientDoctorListState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<dynamic> get categories => throw _privateConstructorUsedError;
  set categories(List<dynamic> value) => throw _privateConstructorUsedError;
  List<Doctor> get doctorList => throw _privateConstructorUsedError;
  set doctorList(List<Doctor> value) => throw _privateConstructorUsedError;
  String get search => throw _privateConstructorUsedError;
  set search(String value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientDoctorListStateCopyWith<PatientDoctorListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientDoctorListStateCopyWith<$Res> {
  factory $PatientDoctorListStateCopyWith(PatientDoctorListState value,
          $Res Function(PatientDoctorListState) then) =
      _$PatientDoctorListStateCopyWithImpl<$Res, PatientDoctorListState>;
  @useResult
  $Res call(
      {int counter,
      List<dynamic> categories,
      List<Doctor> doctorList,
      String search});
}

/// @nodoc
class _$PatientDoctorListStateCopyWithImpl<$Res,
        $Val extends PatientDoctorListState>
    implements $PatientDoctorListStateCopyWith<$Res> {
  _$PatientDoctorListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
    Object? doctorList = null,
    Object? search = null,
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
      doctorList: null == doctorList
          ? _value.doctorList
          : doctorList // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientDoctorListStateImplCopyWith<$Res>
    implements $PatientDoctorListStateCopyWith<$Res> {
  factory _$$PatientDoctorListStateImplCopyWith(
          _$PatientDoctorListStateImpl value,
          $Res Function(_$PatientDoctorListStateImpl) then) =
      __$$PatientDoctorListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int counter,
      List<dynamic> categories,
      List<Doctor> doctorList,
      String search});
}

/// @nodoc
class __$$PatientDoctorListStateImplCopyWithImpl<$Res>
    extends _$PatientDoctorListStateCopyWithImpl<$Res,
        _$PatientDoctorListStateImpl>
    implements _$$PatientDoctorListStateImplCopyWith<$Res> {
  __$$PatientDoctorListStateImplCopyWithImpl(
      _$PatientDoctorListStateImpl _value,
      $Res Function(_$PatientDoctorListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
    Object? doctorList = null,
    Object? search = null,
  }) {
    return _then(_$PatientDoctorListStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      doctorList: null == doctorList
          ? _value.doctorList
          : doctorList // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PatientDoctorListStateImpl implements _PatientDoctorListState {
  _$PatientDoctorListStateImpl(
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
      ],
      this.doctorList = const [],
      this.search = ""});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<dynamic> categories;
  @override
  @JsonKey()
  List<Doctor> doctorList;
  @override
  @JsonKey()
  String search;

  @override
  String toString() {
    return 'PatientDoctorListState(counter: $counter, categories: $categories, doctorList: $doctorList, search: $search)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientDoctorListStateImplCopyWith<_$PatientDoctorListStateImpl>
      get copyWith => __$$PatientDoctorListStateImplCopyWithImpl<
          _$PatientDoctorListStateImpl>(this, _$identity);
}

abstract class _PatientDoctorListState implements PatientDoctorListState {
  factory _PatientDoctorListState(
      {int counter,
      List<dynamic> categories,
      List<Doctor> doctorList,
      String search}) = _$PatientDoctorListStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  List<dynamic> get categories;
  set categories(List<dynamic> value);
  @override
  List<Doctor> get doctorList;
  set doctorList(List<Doctor> value);
  @override
  String get search;
  set search(String value);
  @override
  @JsonKey(ignore: true)
  _$$PatientDoctorListStateImplCopyWith<_$PatientDoctorListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
