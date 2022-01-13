class Calculator {
  calc(double unit) {
    final double bill;
    double fixed = 0;
    if (unit <= 100) {
      fixed = 0;
      bill = (unit * 0) + fixed;
    } else if (unit <= 200) {
      fixed = 20;
      bill = (100 * 0) + ((unit - 100) * 1.5) + fixed;
    } else if (unit <= 500) {
      fixed = 30;
      bill = (100 * 0) + (100 * 2) + ((unit - 200) * 3) + fixed;
    } else {
      fixed = 50;
      bill =
          (100 * 0) + (100 * 3.5) + (300 * 4.6) + ((unit - 500) * 6.6) + fixed;
    }
    return bill;
  }
}
