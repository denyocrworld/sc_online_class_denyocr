// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_id')
  int? get doctorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_id')
  int? get scheduleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_name')
  String? get patientName => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_dob')
  String? get patientDob => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_gender')
  String? get patientGender => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_id_card')
  String? get patientIdCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_address')
  String? get patientAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_phone_number')
  String? get patientPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_whatsapp_number')
  String? get patientWhatsappNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type')
  String? get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_transaction_id')
  String? get paymentTransactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_order_id')
  String? get paymentOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_transaction_status')
  String? get paymentTransactionStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_callback_detail')
  String? get paymentCallbackDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  dynamic get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  dynamic get updatedAt => throw _privateConstructorUsedError;
  Doctor? get doctor => throw _privateConstructorUsedError;
  Schedule? get schedule => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'doctor_id') int? doctorId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'schedule_id') int? scheduleId,
      @JsonKey(name: 'patient_name') String? patientName,
      @JsonKey(name: 'patient_dob') String? patientDob,
      @JsonKey(name: 'patient_gender') String? patientGender,
      @JsonKey(name: 'patient_id_card') String? patientIdCard,
      @JsonKey(name: 'patient_address') String? patientAddress,
      @JsonKey(name: 'patient_phone_number') String? patientPhoneNumber,
      @JsonKey(name: 'patient_whatsapp_number') String? patientWhatsappNumber,
      @JsonKey(name: 'payment_type') String? paymentType,
      @JsonKey(name: 'payment_transaction_id') String? paymentTransactionId,
      @JsonKey(name: 'payment_order_id') String? paymentOrderId,
      @JsonKey(name: 'payment_transaction_status')
      String? paymentTransactionStatus,
      @JsonKey(name: 'payment_callback_detail') String? paymentCallbackDetail,
      @JsonKey(name: 'created_at') dynamic createdAt,
      @JsonKey(name: 'updated_at') dynamic updatedAt,
      Doctor? doctor,
      Schedule? schedule});

  $DoctorCopyWith<$Res>? get doctor;
  $ScheduleCopyWith<$Res>? get schedule;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? doctorId = freezed,
    Object? userId = freezed,
    Object? scheduleId = freezed,
    Object? patientName = freezed,
    Object? patientDob = freezed,
    Object? patientGender = freezed,
    Object? patientIdCard = freezed,
    Object? patientAddress = freezed,
    Object? patientPhoneNumber = freezed,
    Object? patientWhatsappNumber = freezed,
    Object? paymentType = freezed,
    Object? paymentTransactionId = freezed,
    Object? paymentOrderId = freezed,
    Object? paymentTransactionStatus = freezed,
    Object? paymentCallbackDetail = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? doctor = freezed,
    Object? schedule = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int?,
      patientName: freezed == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
      patientDob: freezed == patientDob
          ? _value.patientDob
          : patientDob // ignore: cast_nullable_to_non_nullable
              as String?,
      patientGender: freezed == patientGender
          ? _value.patientGender
          : patientGender // ignore: cast_nullable_to_non_nullable
              as String?,
      patientIdCard: freezed == patientIdCard
          ? _value.patientIdCard
          : patientIdCard // ignore: cast_nullable_to_non_nullable
              as String?,
      patientAddress: freezed == patientAddress
          ? _value.patientAddress
          : patientAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      patientPhoneNumber: freezed == patientPhoneNumber
          ? _value.patientPhoneNumber
          : patientPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      patientWhatsappNumber: freezed == patientWhatsappNumber
          ? _value.patientWhatsappNumber
          : patientWhatsappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTransactionId: freezed == paymentTransactionId
          ? _value.paymentTransactionId
          : paymentTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentOrderId: freezed == paymentOrderId
          ? _value.paymentOrderId
          : paymentOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTransactionStatus: freezed == paymentTransactionStatus
          ? _value.paymentTransactionStatus
          : paymentTransactionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCallbackDetail: freezed == paymentCallbackDetail
          ? _value.paymentCallbackDetail
          : paymentCallbackDetail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorCopyWith<$Res>? get doctor {
    if (_value.doctor == null) {
      return null;
    }

    return $DoctorCopyWith<$Res>(_value.doctor!, (value) {
      return _then(_value.copyWith(doctor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleCopyWith<$Res>? get schedule {
    if (_value.schedule == null) {
      return null;
    }

    return $ScheduleCopyWith<$Res>(_value.schedule!, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'doctor_id') int? doctorId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'schedule_id') int? scheduleId,
      @JsonKey(name: 'patient_name') String? patientName,
      @JsonKey(name: 'patient_dob') String? patientDob,
      @JsonKey(name: 'patient_gender') String? patientGender,
      @JsonKey(name: 'patient_id_card') String? patientIdCard,
      @JsonKey(name: 'patient_address') String? patientAddress,
      @JsonKey(name: 'patient_phone_number') String? patientPhoneNumber,
      @JsonKey(name: 'patient_whatsapp_number') String? patientWhatsappNumber,
      @JsonKey(name: 'payment_type') String? paymentType,
      @JsonKey(name: 'payment_transaction_id') String? paymentTransactionId,
      @JsonKey(name: 'payment_order_id') String? paymentOrderId,
      @JsonKey(name: 'payment_transaction_status')
      String? paymentTransactionStatus,
      @JsonKey(name: 'payment_callback_detail') String? paymentCallbackDetail,
      @JsonKey(name: 'created_at') dynamic createdAt,
      @JsonKey(name: 'updated_at') dynamic updatedAt,
      Doctor? doctor,
      Schedule? schedule});

  @override
  $DoctorCopyWith<$Res>? get doctor;
  @override
  $ScheduleCopyWith<$Res>? get schedule;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? doctorId = freezed,
    Object? userId = freezed,
    Object? scheduleId = freezed,
    Object? patientName = freezed,
    Object? patientDob = freezed,
    Object? patientGender = freezed,
    Object? patientIdCard = freezed,
    Object? patientAddress = freezed,
    Object? patientPhoneNumber = freezed,
    Object? patientWhatsappNumber = freezed,
    Object? paymentType = freezed,
    Object? paymentTransactionId = freezed,
    Object? paymentOrderId = freezed,
    Object? paymentTransactionStatus = freezed,
    Object? paymentCallbackDetail = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? doctor = freezed,
    Object? schedule = freezed,
  }) {
    return _then(_$OrderImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int?,
      patientName: freezed == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
      patientDob: freezed == patientDob
          ? _value.patientDob
          : patientDob // ignore: cast_nullable_to_non_nullable
              as String?,
      patientGender: freezed == patientGender
          ? _value.patientGender
          : patientGender // ignore: cast_nullable_to_non_nullable
              as String?,
      patientIdCard: freezed == patientIdCard
          ? _value.patientIdCard
          : patientIdCard // ignore: cast_nullable_to_non_nullable
              as String?,
      patientAddress: freezed == patientAddress
          ? _value.patientAddress
          : patientAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      patientPhoneNumber: freezed == patientPhoneNumber
          ? _value.patientPhoneNumber
          : patientPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      patientWhatsappNumber: freezed == patientWhatsappNumber
          ? _value.patientWhatsappNumber
          : patientWhatsappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTransactionId: freezed == paymentTransactionId
          ? _value.paymentTransactionId
          : paymentTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentOrderId: freezed == paymentOrderId
          ? _value.paymentOrderId
          : paymentOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTransactionStatus: freezed == paymentTransactionStatus
          ? _value.paymentTransactionStatus
          : paymentTransactionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCallbackDetail: freezed == paymentCallbackDetail
          ? _value.paymentCallbackDetail
          : paymentCallbackDetail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  _$OrderImpl(
      {this.id,
      @JsonKey(name: 'doctor_id') this.doctorId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'schedule_id') this.scheduleId,
      @JsonKey(name: 'patient_name') this.patientName,
      @JsonKey(name: 'patient_dob') this.patientDob,
      @JsonKey(name: 'patient_gender') this.patientGender,
      @JsonKey(name: 'patient_id_card') this.patientIdCard,
      @JsonKey(name: 'patient_address') this.patientAddress,
      @JsonKey(name: 'patient_phone_number') this.patientPhoneNumber,
      @JsonKey(name: 'patient_whatsapp_number') this.patientWhatsappNumber,
      @JsonKey(name: 'payment_type') this.paymentType,
      @JsonKey(name: 'payment_transaction_id') this.paymentTransactionId,
      @JsonKey(name: 'payment_order_id') this.paymentOrderId,
      @JsonKey(name: 'payment_transaction_status')
      this.paymentTransactionStatus,
      @JsonKey(name: 'payment_callback_detail') this.paymentCallbackDetail,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.doctor,
      this.schedule});

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'doctor_id')
  final int? doctorId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'schedule_id')
  final int? scheduleId;
  @override
  @JsonKey(name: 'patient_name')
  final String? patientName;
  @override
  @JsonKey(name: 'patient_dob')
  final String? patientDob;
  @override
  @JsonKey(name: 'patient_gender')
  final String? patientGender;
  @override
  @JsonKey(name: 'patient_id_card')
  final String? patientIdCard;
  @override
  @JsonKey(name: 'patient_address')
  final String? patientAddress;
  @override
  @JsonKey(name: 'patient_phone_number')
  final String? patientPhoneNumber;
  @override
  @JsonKey(name: 'patient_whatsapp_number')
  final String? patientWhatsappNumber;
  @override
  @JsonKey(name: 'payment_type')
  final String? paymentType;
  @override
  @JsonKey(name: 'payment_transaction_id')
  final String? paymentTransactionId;
  @override
  @JsonKey(name: 'payment_order_id')
  final String? paymentOrderId;
  @override
  @JsonKey(name: 'payment_transaction_status')
  final String? paymentTransactionStatus;
  @override
  @JsonKey(name: 'payment_callback_detail')
  final String? paymentCallbackDetail;
  @override
  @JsonKey(name: 'created_at')
  final dynamic createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final dynamic updatedAt;
  @override
  final Doctor? doctor;
  @override
  final Schedule? schedule;

  @override
  String toString() {
    return 'Order(id: $id, doctorId: $doctorId, userId: $userId, scheduleId: $scheduleId, patientName: $patientName, patientDob: $patientDob, patientGender: $patientGender, patientIdCard: $patientIdCard, patientAddress: $patientAddress, patientPhoneNumber: $patientPhoneNumber, patientWhatsappNumber: $patientWhatsappNumber, paymentType: $paymentType, paymentTransactionId: $paymentTransactionId, paymentOrderId: $paymentOrderId, paymentTransactionStatus: $paymentTransactionStatus, paymentCallbackDetail: $paymentCallbackDetail, createdAt: $createdAt, updatedAt: $updatedAt, doctor: $doctor, schedule: $schedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName) &&
            (identical(other.patientDob, patientDob) ||
                other.patientDob == patientDob) &&
            (identical(other.patientGender, patientGender) ||
                other.patientGender == patientGender) &&
            (identical(other.patientIdCard, patientIdCard) ||
                other.patientIdCard == patientIdCard) &&
            (identical(other.patientAddress, patientAddress) ||
                other.patientAddress == patientAddress) &&
            (identical(other.patientPhoneNumber, patientPhoneNumber) ||
                other.patientPhoneNumber == patientPhoneNumber) &&
            (identical(other.patientWhatsappNumber, patientWhatsappNumber) ||
                other.patientWhatsappNumber == patientWhatsappNumber) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.paymentTransactionId, paymentTransactionId) ||
                other.paymentTransactionId == paymentTransactionId) &&
            (identical(other.paymentOrderId, paymentOrderId) ||
                other.paymentOrderId == paymentOrderId) &&
            (identical(
                    other.paymentTransactionStatus, paymentTransactionStatus) ||
                other.paymentTransactionStatus == paymentTransactionStatus) &&
            (identical(other.paymentCallbackDetail, paymentCallbackDetail) ||
                other.paymentCallbackDetail == paymentCallbackDetail) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        doctorId,
        userId,
        scheduleId,
        patientName,
        patientDob,
        patientGender,
        patientIdCard,
        patientAddress,
        patientPhoneNumber,
        patientWhatsappNumber,
        paymentType,
        paymentTransactionId,
        paymentOrderId,
        paymentTransactionStatus,
        paymentCallbackDetail,
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        doctor,
        schedule
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  factory _Order(
      {final int? id,
      @JsonKey(name: 'doctor_id') final int? doctorId,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'schedule_id') final int? scheduleId,
      @JsonKey(name: 'patient_name') final String? patientName,
      @JsonKey(name: 'patient_dob') final String? patientDob,
      @JsonKey(name: 'patient_gender') final String? patientGender,
      @JsonKey(name: 'patient_id_card') final String? patientIdCard,
      @JsonKey(name: 'patient_address') final String? patientAddress,
      @JsonKey(name: 'patient_phone_number') final String? patientPhoneNumber,
      @JsonKey(name: 'patient_whatsapp_number')
      final String? patientWhatsappNumber,
      @JsonKey(name: 'payment_type') final String? paymentType,
      @JsonKey(name: 'payment_transaction_id')
      final String? paymentTransactionId,
      @JsonKey(name: 'payment_order_id') final String? paymentOrderId,
      @JsonKey(name: 'payment_transaction_status')
      final String? paymentTransactionStatus,
      @JsonKey(name: 'payment_callback_detail')
      final String? paymentCallbackDetail,
      @JsonKey(name: 'created_at') final dynamic createdAt,
      @JsonKey(name: 'updated_at') final dynamic updatedAt,
      final Doctor? doctor,
      final Schedule? schedule}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'doctor_id')
  int? get doctorId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'schedule_id')
  int? get scheduleId;
  @override
  @JsonKey(name: 'patient_name')
  String? get patientName;
  @override
  @JsonKey(name: 'patient_dob')
  String? get patientDob;
  @override
  @JsonKey(name: 'patient_gender')
  String? get patientGender;
  @override
  @JsonKey(name: 'patient_id_card')
  String? get patientIdCard;
  @override
  @JsonKey(name: 'patient_address')
  String? get patientAddress;
  @override
  @JsonKey(name: 'patient_phone_number')
  String? get patientPhoneNumber;
  @override
  @JsonKey(name: 'patient_whatsapp_number')
  String? get patientWhatsappNumber;
  @override
  @JsonKey(name: 'payment_type')
  String? get paymentType;
  @override
  @JsonKey(name: 'payment_transaction_id')
  String? get paymentTransactionId;
  @override
  @JsonKey(name: 'payment_order_id')
  String? get paymentOrderId;
  @override
  @JsonKey(name: 'payment_transaction_status')
  String? get paymentTransactionStatus;
  @override
  @JsonKey(name: 'payment_callback_detail')
  String? get paymentCallbackDetail;
  @override
  @JsonKey(name: 'created_at')
  dynamic get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  dynamic get updatedAt;
  @override
  Doctor? get doctor;
  @override
  Schedule? get schedule;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
