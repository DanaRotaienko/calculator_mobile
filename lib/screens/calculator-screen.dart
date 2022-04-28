import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/calculator-input-form.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CalculatorInputForm(),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await Navigator.pushNamed(context, '/kilometers-to-miles');
          },
          child: Text(
            'km/mi',
            style: TextStyle(fontSize: 14.0),
          )
      ),
    );
  }

}