import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class messageScreenProider with ChangeNotifier {
  List<int> _selecteditems = [];
  List<int> get selecteditem => _selecteditems;

  void additem(int value) {
    selecteditem.add(value);
    notifyListeners();
  }

  void removeitem(int value) {
    selecteditem.remove(value);
    notifyListeners();
  }

  void clearSelectedItems() {
    selecteditem.clear();
    notifyListeners();
  }
}
