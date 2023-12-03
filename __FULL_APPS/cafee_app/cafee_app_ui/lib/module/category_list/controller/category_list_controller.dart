
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/category_list_state.dart';

mixin _CubitLifecycle {
  void initState() {}
  void dispose() {}
}

class CategoryListController extends Cubit<CategoryListState> with _CubitLifecycle {
  CategoryListController() : super(CategoryListState());

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
    
      
    