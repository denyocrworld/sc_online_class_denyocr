// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: json['id'] as int?,
      doctorId: json['doctor_id'] as int?,
      userId: json['user_id'] as int?,
      scheduleId: json['schedule_id'] as int?,
      patientName: json['patient_name'] as String?,
      patientDob: json['patient_dob'] as String?,
      patientGender: json['patient_gender'] as String?,
      patientIdCard: json['patient_id_card'] as String?,
      patientAddress: json['patient_address'] as String?,
      patientPhoneNumber: json['patient_phone_number'] as String?,
      patientWhatsappNumber: json['patient_whatsapp_number'] as String?,
      paymentType: json['payment_type'] as String?,
      paymentTransactionId: json['payment_transaction_id'] as String?,
      paymentOrderId: json['payment_order_id'] as String?,
      paymentTransactionStatus: json['payment_transaction_status'] as String?,
      paymentCallbackDetail: json['payment_callback_detail'] as String?,
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      doctor: json['doctor'] == null
          ? null
          : Doctor.fromJson(json['doctor'] as Map<String, dynamic>),
      schedule: json['schedule'] == null
          ? null
          : Schedule.fromJson(json['schedule'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doctor_id': instance.doctorId,
      'user_id': instance.userId,
      'schedule_id': instance.scheduleId,
      'patient_name': instance.patientName,
      'patient_dob': instance.patientDob,
      'patient_gender': instance.patientGender,
      'patient_id_card': instance.patientIdCard,
      'patient_address': instance.patientAddress,
      'patient_phone_number': instance.patientPhoneNumber,
      'patient_whatsapp_number': instance.patientWhatsappNumber,
      'payment_type': instance.paymentType,
      'payment_transaction_id': instance.paymentTransactionId,
      'payment_order_id': instance.paymentOrderId,
      'payment_transaction_status': instance.paymentTransactionStatus,
      'payment_callback_detail': instance.paymentCallbackDetail,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'doctor': instance.doctor,
      'schedule': instance.schedule,
    };
