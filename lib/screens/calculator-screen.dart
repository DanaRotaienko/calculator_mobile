import 'package:calculator_mobile/widgets/history-widgets.dart';
import 'package:flutter/material.dart';

import '../widgets/calculator-input-form.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

int selectedPage = 0;

final _pageOptions = [
  const CalculatorInputForm(),
  const HistoryWidget()
];



class _CalculatorScreenState extends State<CalculatorScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: _pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        unselectedItemColor: Colors.blue[200],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined),
            label: 'History',
          ),
        ],
        onTap: (index){
          setState(() {
            selectedPage = index;
          });
        },
        currentIndex: selectedPage,
        selectedItemColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await Navigator.pushNamed(context, '/kilometers-to-miles');
          },
          child: const Text(
            'km/mi',
            style: TextStyle(fontSize: 14.0),
          )
      ),
    );
  }
}