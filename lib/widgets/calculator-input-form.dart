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
                decoration: const InputDecoration(
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
              decoration: const InputDecoration(
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
            ResultTextWidget(cal),

          ]
      ),
    );
  }
}

class ResultTextWidget extends StatefulWidget {
  final Calculator cal;
  const ResultTextWidget(this.cal, {Key? key}) : super(key: key);

  @override
  State<ResultTextWidget> createState() => _ResultTextWidgetState(cal);
}

class _ResultTextWidgetState extends State<ResultTextWidget> {
  String result = "Result: ";
  final Calculator cal;
  changeText () {
    setState(() {
      result = "Result: ${cal.result.toStringAsFixed(2)}";
    });
  }
  _ResultTextWidgetState(this.cal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: changeText,
            child: const Text(
                'Calculate',
                style: TextStyle(fontSize: 20.0),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
            )
        ),
        Text(
          result,
          style: const TextStyle(fontSize: 16.0),
        )
      ],

    );
  }
}
