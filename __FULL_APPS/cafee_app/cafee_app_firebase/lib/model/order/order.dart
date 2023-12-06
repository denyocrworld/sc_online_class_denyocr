import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  factory Order({
    String? id,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    String? status,
    List<dynamic>? items,
    String? total,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
