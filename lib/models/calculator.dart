import 'dart:math';

class Calculator {
  int x;
  int y;
  double result;

  Calculator(this.x, this.y, this.result);

  void setX(int newX) {
    x = newX;
  }

  void setY(int newY) {
    y = newY;
  }

  void addition(bool percentage) {
    if (percentage) {
      result = double.parse((x + y/100*x).toStringAsFixed(2));
    } else {
      result = double.parse((x + y).toStringAsFixed(2));
    }
  }

  void subtraction(bool percentage) {
    if (percentage) {
      result = double.parse(((x - y/100*x).toStringAsFixed(2)));
    } else {
      result = double.parse((x - y).toStringAsFixed(2));
    }
  }

  void multiplication(bool percentage) {
    if (percentage) {
      result = double.parse((x * y/100*x).toStringAsFixed(2));
    } else {
      result = double.parse((x * y).toStringAsFixed(2));
    }
  }

  void division(bool percentage) {
    if (percentage) {
      y == 0 ? result : result = double.parse((x / y/100*x).toStringAsFixed(2));
    } else {
      y == 0 ? result : result = double.parse((x / y/100*x).toStringAsFixed(2));
    }
  }

  void power(bool percentage) {
    if (percentage) {
      result = double.parse(pow(x, y/100*x).toStringAsFixed(2));
    } else {
      result = pow(x, y).toDouble().toStringAsFixed(2) as double;
    }
  }

  void squareRoot() {
    result = double.parse(sqrt(x).toStringAsFixed(2));
  }

  void Sin() {v
    result = double.parse(sin(x).toStringAsFixed(2));
  }

  void Cos() {
    result = double.parse(cos(x).toStringAsFixed(2));
  }

  void kmToMi() {
    result = double.parse((x/1.609).toStringAsFixed(2));
  }

}