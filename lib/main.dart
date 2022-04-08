
import 'package:authpages_sqlite/app_database.dart';
import 'package:authpages_sqlite/global.dart';
import 'package:authpages_sqlite/screens/homepage.dart';
import 'package:authpages_sqlite/screens/welcome_page.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  db = await AppDatabase().initDB();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? email = prefs.getString("email");
  // print("logged in User:" + email);
  runApp(MaterialApp(home: email == null ? WelcomePage() : HomePage()));
}
