import 'package:flutter/material.dart';
import 'package:unipar_aula_reatividade_flutter/05_reatividade_com_state_pattern/counter_state_pattern.dart';

class ReatividadeStatePatternController extends ValueNotifier<CounterState> {
  ReatividadeStatePatternController() : super(ShowCounter(value: 0));

  void increment() {
    int counter = (value as ShowCounter).value;

    value = ShowCounter(value: counter += 1);
  }

  void decrement() {
    int counter = (value as ShowCounter).value;

    value = ShowCounter(value: counter -= 1);
  }
}
