import 'package:authpages_sqlite/screens/homepage.dart';
import 'package:authpages_sqlite/screens/login.dart';
import 'package:authpages_sqlite/screens/signup.dart';
import 'package:authpages_sqlite/screens/welcome_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
     initialRoute: '/',
     routes: {
       '/' : (context) =>  WelcomePage(),
       '/login': (context) =>  LogIn(),
       '/signup': (context) => SignUp(),
        '/homepage': (context) => HomePage(),


     },
    );
  }
}
