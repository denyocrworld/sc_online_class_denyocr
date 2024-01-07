import 'package:flutter_mobx_examples/core.dart';
import 'package:flutter_mobx_examples/mobx_util.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'dashboard_controller.g.dart';

@singleton
class DashboardController = DashboardControllerBase with _$DashboardController;

abstract class DashboardControllerBase with Store implements ControllerBase {
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
  ready() {
    LoginController loginController = GetIt.I<LoginController>();
    loginController.increment();
  }
}
