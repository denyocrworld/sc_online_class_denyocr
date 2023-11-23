import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import '../state/profile_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProfileController extends Cubit<ProfileState> implements IBlocBase {
  ProfileController() : super(ProfileState());

  @override
  void initState() {
    //initState event
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  logout() async {
    showLoading();
    await AuthService().logout();
    Get.offAll(LoginView());
    hideLoading();
  }
}
