import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_events.dart';
 

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>(_increment);
    on<CounterDecrementPressed>(_decrement);
  }

  Future<void> _increment(
    CounterEvent event,
    Emitter<int> emit,
  ) async {
    emit(
      state + 1,
    );
  }

  Future<void> _decrement(
    CounterEvent event,
    Emitter<int> emit,
  ) async {
    emit(
      state - 1,
    );
  }
}
