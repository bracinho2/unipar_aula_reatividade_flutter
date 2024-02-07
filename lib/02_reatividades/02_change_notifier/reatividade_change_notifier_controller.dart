import 'package:flutter/material.dart';

class ReatividadeChangeNotifierController extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count += 1;
    notifyListeners();
  }

  void decrement() {
    _count -= 1;
    notifyListeners();
  }
}
