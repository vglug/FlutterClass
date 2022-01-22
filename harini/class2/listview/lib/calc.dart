import 'package:eb_task/widgets/textField.dart';
import 'package:flutter/foundation.dart';

class Calculate extends ChangeNotifier {
  var result = 0;

  var a;
  var b;
  var c;
  UnitValue(value) {
    if (value > 500) {
      a = (value - 500) * 6.6;
      b = 300 * 4.6;
      c = 100 * 3.5;
      return a + b + c + 50;
    } else if (value > 200) {
      a = (value - 200) * 3;
      b = 100 * 2;
      return a + b + 30;
    } else if (value > 100) {
      a = (value - 100) * 1.5;
      return a + 20;
    } else {
      return 0;
    }
  }

  TariffCal() {
    var a = int.parse(CusTextField.enteredValueOne);
    c = UnitValue(a);
    result = c.round();
    notifyListeners();
  }

  ReadingCalculator() {
    var a = int.parse(CusTextField.enteredValueOne);
    var b = int.parse(CusTextField.enteredValueTwo);
    c = UnitValue(b - a);
    result = c.round();
    notifyListeners();
  }

  clean() {
    result = 0;
    notifyListeners();
  }
}
