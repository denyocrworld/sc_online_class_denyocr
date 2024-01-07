import 'package:flutter_tab_navigation/model/book_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'dashboard_state.freezed.dart';

@unfreezed
class DashboardState with _$DashboardState {
  factory DashboardState({
    @Default(0) int counter,
    @Default([]) List<Book> books,
  }) = _DashboardState;
}
