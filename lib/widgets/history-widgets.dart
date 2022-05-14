import 'package:flutter/material.dart';

class HistoryWidget extends StatefulWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            child: ListTile(
              title: Row(
                  children: const [
                    Text("4 + 2 = 6"),
                  ]),
            ),
          ),
          Card(
            child: ListTile(
              title: Row(
                  children: const [
                    Text("4 / 2 = 2"),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
