
import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_manager_state.freezed.dart';

@unfreezed
class DataManagerState with _$DataManagerState {
  factory DataManagerState({
    @Default(0) int counter,
  }) = _DataManagerState;
}
    
    