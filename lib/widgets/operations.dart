import 'package:flutter/material.dart';

import '../models/calculator.dart';

class OperationsWidget extends StatelessWidget {

  final Calculator cal;

  const OperationsWidget(this.cal, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                cal.addition();
              },
            ),
            TextButton(
              child: Text(
                '-',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                cal.subtraction();
              },
            ),
            TextButton(
              child: Text(
                '*',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                cal.multiplication();
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
                cal.division();
              },
            ),
            TextButton(
              child: Text(
                '^',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                cal.power();

              },
            ),
          ]
      ),
    ]);
  }
}
