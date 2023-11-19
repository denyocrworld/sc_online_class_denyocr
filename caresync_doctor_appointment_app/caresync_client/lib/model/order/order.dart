import 'package:freezed_annotation/freezed_annotation.dart';

import 'doctor.dart';
import 'schedule.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  factory Order({
    int? id,
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
    Schedule? schedule,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
