import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_state.freezed.dart';

@unfreezed
class OrderState with _$OrderState {
  factory OrderState({
    @Default(0) int counter,
    @Default([
      {
        "id": 1001,
        "date": "2023-11-23 10:25",
        "type": "Sales",
        "total": 250.000,
        "item_count": 5,
      },
      {
        "id": 1002,
        "date": "2023-11-23 11:10",
        "type": "Expense",
        "total": 320.000,
      },
      {
        "id": 1003,
        "date": "2023-11-22 12:45",
        "type": "Expense",
        "total": 180.000,
      },
      {
        "id": 1004,
        "date": "2023-11-22 14:30",
        "type": "Sales",
        "total": 420.000,
        "item_count": 9,
      },
      {
        "id": 1005,
        "date": "2023-11-22 15:15",
        "type": "Sales",
        "total": 150.000,
        "item_count": 3,
      },
      {
        "id": 1006,
        "date": "2023-11-21 16:00",
        "type": "Sales",
        "total": 280.000,
        "item_count": 6,
      },
      {
        "id": 1007,
        "date": "2023-11-21 16:45",
        "type": "Sales",
        "total": 200.000,
        "item_count": 4,
      },
      {
        "id": 1008,
        "date": "2023-11-20 17:30",
        "type": "Sales",
        "total": 360.000,
        "item_count": 8,
      },
      {
        "id": 1009,
        "date": "2023-11-20 18:15",
        "type": "Sales",
        "total": 120.000,
        "item_count": 2,
      },
      {
        "id": 1010,
        "date": "2023-11-20 19:00",
        "type": "Sales",
        "total": 300.000,
        "item_count": 6,
      },
      {
        "id": 1011,
        "date": "2023-11-20 20:45",
        "type": "Sales",
        "total": 280.000,
        "item_count": 5,
      },
      {
        "id": 1012,
        "date": "2023-11-20 21:30",
        "type": "Sales",
        "total": 150.000,
        "item_count": 3,
      },
      {
        "id": 1013,
        "date": "2023-11-20 22:15",
        "type": "Sales",
        "total": 420.000,
        "item_count": 7,
      },
      {
        "id": 1014,
        "date": "2023-11-20 23:00",
        "type": "Sales",
        "total": 190.000,
        "item_count": 4,
      },
      {
        "id": 1015,
        "date": "2023-11-24 00:45",
        "type": "Sales",
        "total": 360.000,
        "item_count": 8,
      },
      {
        "id": 1016,
        "date": "2023-11-24 01:30",
        "type": "Sales",
        "total": 210.000,
        "item_count": 5,
      },
      {
        "id": 1017,
        "date": "2023-11-24 02:15",
        "type": "Sales",
        "total": 280.000,
        "item_count": 6,
      },
      {
        "id": 1018,
        "date": "2023-11-24 03:00",
        "type": "Sales",
        "total": 140.000,
        "item_count": 3,
      },
      {
        "id": 1019,
        "date": "2023-11-24 03:45",
        "type": "Sales",
        "total": 330.000,
        "item_count": 7,
      },
      {
        "id": 1020,
        "date": "2023-11-24 04:30",
        "type": "Sales",
        "total": 270.000,
        "item_count": 6,
      }
    ])
    List items,
  }) = _OrderState;
}
