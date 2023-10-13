import 'package:car_rental_app/core.dart';

class Input {
  static Map<String, dynamic> values = {};
  static Map<String, InputControlState> inputController = {};

  static set(key, value) {
    values[key] = value;
  }

  static get(key) {
    return values[key];
  }

  static clear(key) {
    values.remove(key);
  }

  static resetValues() {
    inputController.forEach((key, value) {
      print("Reset Value for $key");
      value.resetValue();
    });
  }
}
