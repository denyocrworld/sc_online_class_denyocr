import 'dart:math';
import 'package:extreme_samples/inheritance_examples/example1/todo_service.dart';

void main() async {
  await TodoService().create({
    "name": "Update fitur login",
    "status": "Pending",
  });

  var response = await TodoService().get();
  print(response);
}
