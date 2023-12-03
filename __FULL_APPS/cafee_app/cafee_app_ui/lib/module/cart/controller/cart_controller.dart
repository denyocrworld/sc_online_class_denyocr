import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/cart_state.dart';

mixin _CubitLifecycle {
  void initState() {}
  void dispose() {}
}

class CartController extends Cubit<CartState> with _CubitLifecycle {
  CartController() : super(CartState());

  @override
  void initState() {
    //initState event
    scrollController.addListener(() {
      //
      if (scrollController.offset <=
          scrollController.position.maxScrollExtent * 0.6) {
        state.visible = true;
        emit(state.copyWith());
      } else if (scrollController.offset ==
          scrollController.position.maxScrollExtent) {
        state.visible = false;
        emit(state.copyWith());
      } else if (scrollController.offset == 0) {
        state.visible = true;
        emit(state.copyWith());
      }
    });
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

  ScrollController scrollController = ScrollController();

  increment() {
    state.counter++;
    emit(state.copyWith());
  }

  updateVisiblity() {
    state.visible = !state.visible;
    emit(state.copyWith());
  }
}
