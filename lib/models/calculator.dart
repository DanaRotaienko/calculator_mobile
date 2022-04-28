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
      result = (x + y/100*x).roundToDouble();
    } else {
      result = (x + y).roundToDouble();
    }
  }

  void subtraction(bool percentage) {
    if (percentage) {
      result = (x - y/100*x).roundToDouble();
    } else {
      result = (x - y).roundToDouble();
    }
  }

  void multiplication(bool percentage) {
    if (percentage) {
      result = (x * y/100*x).roundToDouble();
    } else {
      result = (x * y).roundToDouble();
    }
  }

  void division(bool percentage) {
    if (percentage) {
      y == 0 ? result : result = x / y/100*x;
    } else {
      y == 0 ? result : result = x / y/100*x;
    }
  }

  void power(bool percentage) {
    if (percentage) {
      result = pow(x, y/100*x).toDouble();
    } else {
      result = pow(x, y).toDouble();
    }
  }

  void squareRoot() {
    result = sqrt(x);
  }

  void Sin() {
    result = sin(x);
  }

  void Cos() {
    result = cos(x);
  }

}