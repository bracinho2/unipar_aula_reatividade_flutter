import 'package:flutter/material.dart';

class ReatividadeValueNotifierController extends ValueNotifier<int> {
  ReatividadeValueNotifierController() : super(0);

  void increment() {
    value = value + 1;
  }

  void decrement() {
    value = value - 1;
  }
}
