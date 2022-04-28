import 'package:calculator_mobile/widgets/KilometersToMilesWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KilometersToMilesScreen extends StatelessWidget {
  const KilometersToMilesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: InputsWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
