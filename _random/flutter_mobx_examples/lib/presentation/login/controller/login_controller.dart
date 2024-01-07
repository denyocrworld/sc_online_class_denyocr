
import 'package:flutter/services.dart';
import 'package:flutter_mobx_examples/core.dart';
import 'package:flutter_mobx_examples/mobx_util.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

@singleton
class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store implements ControllerBase {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }

  @override
  initState() {}

  @override
  dispose() {}

  @override
  ready() {}
}
    