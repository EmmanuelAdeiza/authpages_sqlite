// ignore_for_file: prefer_const_constructors

import 'package:authpages_sqlite/components/reusable_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color themeColor = Color(0xff595CFF);
  final Color themeSecColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                      color: themeColor,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Home",
                  style: TextStyle(
                      color: themeColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            ReusableButton(
              text: "Log out",
              textColor: Colors.white,
              bodyColor: Colors.blue,
              onTap: () {
                Navigator.pushNamed(context, '/signup');
              },
            ),
          ]),
        ),
      ),
    );
  }
}
