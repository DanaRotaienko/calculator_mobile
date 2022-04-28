import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/calculator.dart';
import 'operations.dart';

class CalculatorInputForm extends StatefulWidget {
  const CalculatorInputForm({Key? key}) : super(key: key);

  @override
  State<CalculatorInputForm> createState() => _CalculatorInputFormState();
}

class _CalculatorInputFormState extends State<CalculatorInputForm> {
  Calculator cal = Calculator(0, 0, 0);
  TextEditingController xController = TextEditingController();
  TextEditingController yController = TextEditingController();

  @override
  void initState() {
    xController.text = cal.x.toString();
    yController.text = cal.y.toString();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
                controller: xController,
                maxLines: 1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter the first number',
                ),
                keyboardType: TextInputType.number,
                onChanged: (input) {
                  setState(() {
                    if (xController.text != '') {
                      cal.setX(int.parse(xController.text));
                    }
                  });
                }
            ),
            TextField(
              controller: yController,
              maxLines: 1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter the second number',
              ),
              keyboardType: TextInputType.number,
              onChanged: (input) {
                setState(() {
                  if (yController.text != '') {
                    cal.setY(int.parse(yController.text));
                  }
                });
              },
            ),
            OperationsWidget(cal),
            ResultWidget(cal),
          ]
      ),
    );
  }
}

class ResultWidget extends StatelessWidget {
  final Calculator cal;
  const ResultWidget(this.cal, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Result'),
          content: Text("${cal.result}"),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Calculate'),
    );
  }
}
