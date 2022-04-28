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

  void addition() {
    result = (x + y).roundToDouble();
  }

  void subtraction() {
    result = (x - y).roundToDouble();
  }

  void multiplication() {
    result = (x * y).roundToDouble();
  }

  void division() {
    y == 0 ? result : result = x / y;
  }

  void power() {
    result = pow(x, y).toDouble();
  }

  void percentage() {

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