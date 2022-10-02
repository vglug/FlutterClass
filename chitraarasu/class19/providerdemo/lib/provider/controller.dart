import 'package:flutter/foundation.dart';

class Controller with ChangeNotifier {
  List items = [];

  addItem(val) {
    items.add(val);
    notifyListeners();
  }
}
