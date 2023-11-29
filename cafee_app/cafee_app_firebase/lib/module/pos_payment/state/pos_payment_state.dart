import 'package:freezed_annotation/freezed_annotation.dart';
part 'pos_payment_state.freezed.dart';

@unfreezed
class PosPaymentState with _$PosPaymentState {
  factory PosPaymentState({
    @Default(0) int counter,
    @Default(null) String? paymentUrl,
  }) = _PosPaymentState;
}
