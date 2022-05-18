import 'dart:io';

import 'package:calculator_mobile/models/Expression.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'expressions.db');

    return await openDatabase(path);

  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE expressions(
          id INTEGER PRIMARY KEY,
          calculation TEXT
      )
      ''');
  }

  Future<List<Expression>> getExpressions() async {
    _initDatabase();
    _onCreate(_database!, 1);
    Database db = await instance.database;
    var expressions = await db.query('expressions', orderBy: 'id DESC');
    List<Expression> expressionsList = expressions.isNotEmpty
        ? expressions.map((c) => Expression.fromMap(c)).toList()
        : [];
    return expressionsList;
  }

  Future<int> add(Expression expression) async {
    Database db = await instance.database;
    return await db.insert('expressions', expression.toMap());
  }

}
