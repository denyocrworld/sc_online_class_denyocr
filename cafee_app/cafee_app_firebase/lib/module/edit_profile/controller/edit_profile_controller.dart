import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
import '../state/edit_profile_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class EditProfileController extends Cubit<EditProfileState>
    implements IBlocBase {
  EditProfileController() : super(EditProfileState());

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

  save() async {
    showLoading();

    print(state.userProfile!.toJson());
    await UserProfileService().update(
      state.userProfile!.id!,
      state.userProfile!,
    );
    hideLoading();
    Get.back();
  }
}
