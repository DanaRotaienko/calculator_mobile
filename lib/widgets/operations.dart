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
              child: const Text(
                '+',
                style: TextStyle(fontSize: 14.0),
              ),
              onPressed: () {
                cal.addition(percentageChosen);
                cal.add();
              },
            ),
            TextButton(
              child: const Text(
                '-',
                style: TextStyle(fontSize: 14.0),
              ),
              onPressed: () {
                cal.subtraction(percentageChosen);
                cal.add();
              },
            ),
            TextButton(
              child: const Text(
                '*',
                style: TextStyle(fontSize: 14.0),
              ),
              onPressed: () {
                cal.multiplication(percentageChosen);
                cal.add();
              },
            ),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            TextButton(
              child: const Text(
                '/',
                style: TextStyle(fontSize: 14.0),
              ),
              onPressed: () {
                cal.division(percentageChosen);
                cal.add();
              },
            ),
            TextButton(
              child: const Text(
                '^',
                style: TextStyle(fontSize: 14.0),
              ),
              onPressed: () {
                cal.power(percentageChosen);
                cal.add();
              },
            ),
            TextButton(
              child: const Text(
                'sqrt',
                style: TextStyle(fontSize: 14.0),
              ),
              onPressed: () {
                cal.squareRoot();
                cal.add();
              },
            ),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            TextButton(
              child: const Text(
                'sin',
                style: TextStyle(fontSize: 14.0),
              ),
              onPressed: () {
                cal.Sin();
                cal.add();
              },
            ),
            TextButton(
              child: const Text(
                'cos',
                style: TextStyle(fontSize: 14.0),
              ),
              onPressed: () {
                cal.Cos();
                cal.add();
              },
            ),
            ElevatedButton(
              child: const Text(
                'percentage',
                style: TextStyle(fontSize: 14.0),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (percentageChosen) return Colors.orange;
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
