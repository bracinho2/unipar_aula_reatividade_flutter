abstract class CounterState {}

class LoadingCounter extends CounterState {}

class ShowCounter extends CounterState {
  final int value;

  ShowCounter({
    required this.value,
  });
}
