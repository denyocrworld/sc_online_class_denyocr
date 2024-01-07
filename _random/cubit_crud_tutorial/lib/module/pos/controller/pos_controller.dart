
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/pos_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class PosController extends Cubit<PosState> implements IBlocBase {
  PosController() : super(PosState());

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

  increment() {
    state.counter++;
    emit(state.copyWith());
  }
}
    
      
    