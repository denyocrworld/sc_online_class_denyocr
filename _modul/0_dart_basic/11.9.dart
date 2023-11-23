abstract class ICounterState {
// abstract class CounterStateImpl {
  int counter = 0;
}

class CounterState implements ICounterState {
  @override
  int counter = 10;
}
