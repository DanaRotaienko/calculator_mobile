import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/calculator.dart';

class InputsWidget extends StatefulWidget {
  const InputsWidget({Key? key}) : super(key: key);

  @override
  State<InputsWidget> createState() => _InputsWidgetState();
}

class _InputsWidgetState extends State<InputsWidget> {
  Calculator cal = Calculator(0, 0, 0);
  TextEditingController xController = TextEditingController();
  TextEditingController yController = TextEditingController();

  @override
  void initState() {
    xController.text = cal.x.toString();

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
            OperationWidget(cal)
          ]
      ),
    );
  }
}

class OperationWidget extends StatefulWidget {
  final Calculator cal;
  const OperationWidget(this.cal, {Key? key}) : super(key: key);

  @override
  State<OperationWidget> createState() => _OperationWidgetState(cal);
}

class _OperationWidgetState extends State<OperationWidget> {
  String result = "Result: ";
  final Calculator cal;

  _OperationWidgetState(this.cal);

  changeText () {
   setState(() {
     cal.kmToMi();
     result = "Result: ${cal.result.toStringAsFixed(2)}";
   });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: changeText,
            child: Text(
              'Calculate',
              style: TextStyle(fontSize: 20.0),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            )
        ),
        Text(
            result,
            style: TextStyle(fontSize: 20.0),
        )
      ],
    );
  }
}
