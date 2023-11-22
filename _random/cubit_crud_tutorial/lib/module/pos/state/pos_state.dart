
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pos_state.freezed.dart';

@unfreezed
class PosState with _$PosState {
  factory PosState({
    @Default(0) int counter,
  }) = _PosState;
}
    
    