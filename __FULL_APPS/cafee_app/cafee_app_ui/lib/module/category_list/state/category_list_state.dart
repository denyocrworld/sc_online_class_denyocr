
import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_list_state.freezed.dart';

@unfreezed
class CategoryListState with _$CategoryListState {
  factory CategoryListState({
    @Default(0) int counter,
  }) = _CategoryListState;
}
    
    