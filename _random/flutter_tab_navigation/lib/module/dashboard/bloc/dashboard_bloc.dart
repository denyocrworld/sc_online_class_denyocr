import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tab_navigation/service/book_service/book_service.dart';
import '../event/dashboard_event.dart';
import '../state/dashboard_state.dart';
import 'package:flutter_tab_navigation/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class DashboardBloc extends Bloc<DashboardEvent, DashboardState>
    implements IBlocBase {
  DashboardBloc() : super(DashboardState()) {
    on<DashboardIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<DashboardGetBooksEvent>((event, emit) async {
      print("DashboardGetBooksEvent");
      final response = await BookService().getBooks(
        query: event.query,
      );
      state.books = response!.data!.items ?? [];
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
    print("initState");
    add(DashboardGetBooksEvent());
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  bool get isValid {
    return state.counter == 10 || state.counter == 10 || state.counter == 10;
  }
}
