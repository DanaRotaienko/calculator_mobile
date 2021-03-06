import 'dart:core';
import 'dart:math';

import 'package:calculator_mobile/models/Expression.dart';

import '../database/Database.dart';

class Calculator {
  int x;
  int y;
  double result;
  String? expression;

  Calculator(this.x, this.y, this.result, [this.expression]);

  void setX(int newX) {
    x = newX;
  }

  void setY(int newY) {
    y = newY;
  }

  void addition(bool percentage) {
    if (percentage) {
      result = double.parse((x + y/100*x).toStringAsFixed(2));
      expression = "$x + $y% = $result";
    } else {
      result = double.parse((x + y).toStringAsFixed(2));
      expression = "$x + $y = $result";
    }
  }

  void subtraction(bool percentage) {
    if (percentage) {
      result = double.parse(((x - y/100*x).toStringAsFixed(2)));
      expression = "$x - $y% = $result";
    } else {
      result = double.parse((x - y).toStringAsFixed(2));
      expression = "$x - $y = $result";
    }
  }

  void multiplication(bool percentage) {
    if (percentage) {
      result = double.parse((x * y/100*x).toStringAsFixed(2));
      expression = "$x * $y% = $result";
    } else {
      result = double.parse((x * y).toStringAsFixed(2));
      expression = "$x * $y = $result";
    }
  }

  void division(bool percentage) {
    if (percentage) {
      y == 0 ? result : result = double.parse((x / y/100*x).toStringAsFixed(2));
      expression = "$x / $y% = $result";
    } else {
      y == 0 ? result : result = double.parse((x / y).toStringAsFixed(2));
      expression = "$x / $y = $result";
    }
  }

  void power(bool percentage) {
    if (percentage) {
      result = double.parse(pow(x, y/100*x).toStringAsFixed(2));
      expression = "$x ^ $y% = $result";
    } else {
      result = double.parse(pow(x, y).toDouble().toStringAsFixed(2));
      expression = "$x ^ $y = $result";
    }
  }

  void squareRoot() {
    result = double.parse(sqrt(x).toStringAsFixed(2));
    expression = "SQR($x) = $result";
  }

  void Sin() {
    result = double.parse(sin(x).toStringAsFixed(2));
    expression = "Sin($x) = $result";
  }

  void Cos() {
    result = double.parse(cos(x).toStringAsFixed(2));
    expression = "Cos($x) = $result";
  }

  void kmToMi() {
    result = double.parse((x/1.609).toStringAsFixed(2));
    expression = "$x kilometers = $result miles";
  }

  Future<void> add() async {
    await DatabaseHelper.instance.add(
      Expression(calculation: expression!),
    );
  }


}