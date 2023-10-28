
import 'package:freezed_annotation/freezed_annotation.dart';
part 'tutorial_state.freezed.dart';

@unfreezed
class TutorialState with _$TutorialState {
  factory TutorialState({
    @Default(0) int counter,
  }) = _TutorialState;
}
    
    