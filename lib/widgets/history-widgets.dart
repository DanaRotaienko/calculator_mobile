import 'package:flutter/material.dart';

import '../database/Database.dart';
import '../models/Expression.dart';

class HistoryWidget extends StatefulWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Expression>>(
        future: DatabaseHelper.instance.getExpressions(),
        builder: (BuildContext context,
            AsyncSnapshot<List<Expression>> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: Text('Loading...'));
          }
          return ListView(
            children: snapshot.data!.map((expression) {
              return Center(
                child: ListTile(
                  title: Text(expression.calculation),
                ),
              );
            }).toList(),
          );
        });
  }
}
