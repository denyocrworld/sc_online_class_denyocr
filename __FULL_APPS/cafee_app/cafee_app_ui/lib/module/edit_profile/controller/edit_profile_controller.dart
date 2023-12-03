import 'package:flutter_bloc/flutter_bloc.dart';
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

  save() {}
}
