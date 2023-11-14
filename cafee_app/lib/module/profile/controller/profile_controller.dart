
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/profile_state.dart';

mixin _CubitLifecycle {
  void initState() {}
  void dispose() {}
}

class ProfileController extends Cubit<ProfileState> with _CubitLifecycle {
  ProfileController() : super(ProfileState());

  @override
  void initState() {
    //initState event
    super.initState();
  }

  @override
  void dispose() {
    //dispose event
    super.dispose();
  }

  @override
  Future<void> close() {
    dispose();
    return super.close();
  }

  increment() {
    state.counter++;
    emit(state.copyWith());
  }
}
    
      
    