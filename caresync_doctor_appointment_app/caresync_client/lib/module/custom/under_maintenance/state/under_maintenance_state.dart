import 'package:freezed_annotation/freezed_annotation.dart';
part 'under_maintenance_state.freezed.dart';

@unfreezed
class UnderMaintenanceState with _$UnderMaintenanceState {
  factory UnderMaintenanceState({
    @Default(0) int counter,
  }) = _UnderMaintenanceState;
}
