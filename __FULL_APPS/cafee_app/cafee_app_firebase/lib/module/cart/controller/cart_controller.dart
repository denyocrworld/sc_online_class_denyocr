import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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

      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        // The user is scrolling up (swipe-up)
        // You can perform your desired action here
        // For example, show a widget or change some state
        state.visible = false;
        emit(state.copyWith());
      } else {
        state.visible = true;
        emit(state.copyWith());
      }

      // if (scrollController.offset <=
      //     scrollController.position.maxScrollExtent * 0.6) {
      //   state.visible = true;
      //   emit(state.copyWith());
      // } else if (scrollController.offset ==
      //     scrollController.position.maxScrollExtent) {
      //   state.visible = false;
      //   emit(state.copyWith());
      // } else if (scrollController.offset == 0) {
      //   state.visible = true;
      //   emit(state.copyWith());
      // }
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

  updateVisiblityByValue(bool value) {
    state.visible = value;
    emit(state.copyWith());
  }
}
