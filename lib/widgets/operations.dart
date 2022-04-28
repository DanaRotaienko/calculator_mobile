import 'package:flutter/material.dart';

import '../models/calculator.dart';

class OperationsWidget extends StatelessWidget {

  final Calculator cal;

  const OperationsWidget(this.cal, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool percentageChosen = false;
    return Column(children: <Widget>[
      Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextButton(
              child: Text(
                '+',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                cal.addition(percentageChosen);
              },
            ),
            TextButton(
              child: Text(
                '-',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                cal.subtraction(percentageChosen);
              },
            ),
            TextButton(
              child: Text(
                '*',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                cal.multiplication(percentageChosen);
              },
            ),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            TextButton(
              child: Text(
                '/',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                cal.division(percentageChosen);
              },
            ),
            TextButton(
              child: Text(
                '^',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                cal.power(percentageChosen);
              },
            ),
            TextButton(
              child: Text(
                'sqrt',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                cal.squareRoot();
              },
            ),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            TextButton(
              child: Text(
                'sin',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                cal.Sin();
              },
            ),
            TextButton(
              child: Text(
                'cos',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                cal.Cos();
              },
            ),
            ElevatedButton(
              child: Text(
                'percentage',
                style: TextStyle(fontSize: 20.0),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (percentageChosen) return Colors.green;
                    //states.contains(MaterialState.pressed)
                    return Colors.blueAccent;
                  },
                ),
              ),
              onPressed: () {
                percentageChosen = percentageChosen ? false : true;
              },
            ),
          ]
      ),
    ]);
  }
}
