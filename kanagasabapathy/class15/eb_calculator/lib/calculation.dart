class Calculation {
  int newValue = 0;
  int amount = 0;

  int getAmount(int unit) {
    if (unit > 500) {
      newValue = unit - 100;

      amount = (100 * 3.5).round();
      newValue = newValue - 100;

      amount = amount + (300 * 4.6).round();
      newValue = (newValue - 300);
      amount = amount + (newValue * 6.6).round();

      amount = amount + 50;
      return amount;
    } else if (unit > 200) {
      newValue = (unit - 100);

      amount = (100 * 2).round();
      newValue = newValue - 100;

      amount = amount + (newValue * 3);

      amount = amount + 30;
      return amount;
    } else if (unit > 100) {
      newValue = (unit - 100);
      amount = (newValue * 1.5).round();

      amount = amount + 20;
      return amount;
    } else if (unit <= 100) {
      amount = 0;
      return amount;
    }

    return 0;
  }
}
