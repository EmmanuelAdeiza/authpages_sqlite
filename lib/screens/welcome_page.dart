// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:authpages_sqlite/components/reusable_button.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Lottie.asset('assets/traveller.json'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "bliss",
                      style: TextStyle(
                          color: themeColor,
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "hotel",
                      style: TextStyle(
                          color: themeColor,
                          fontSize: 70,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                // ignore: prefer_const_literals_to_create_immutables
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "your ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "ideal hotels ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "are just a click away",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ]),
                SizedBox(
                  height: 60,
                ),
                ReusableButton(
                  text: "Create An Account",
                  textColor: Colors.white,
                  bodyColor: themeColor,
                  onTap: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                ReusableButton(
                  text: "Log in",
                  textColor: themeColor,
                  bodyColor: Colors.white,
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                )
              ]),
        ),
      ),
    );
  }
}
