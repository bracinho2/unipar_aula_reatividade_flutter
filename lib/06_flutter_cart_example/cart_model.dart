import 'dart:collection';

import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<String> _items = [];

  UnmodifiableListView<String> get items => UnmodifiableListView(_items);

  int get totalPrice => _items.length * 42;

  void add(String item) {
    _items.add(item);

    notifyListeners();
  }

  void removeAll() {
    _items.clear();

    notifyListeners();
  }
}
