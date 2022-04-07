
import 'package:authpages_sqlite/app_database.dart';
import 'package:authpages_sqlite/db_operations.dart';
import 'package:authpages_sqlite/myapp.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final db = await AppDatabase().initDB();
  DBOperations(db).insertRecord("Hello", "More");

  runApp(MyApp());
}
