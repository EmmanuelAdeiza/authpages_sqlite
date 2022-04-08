// ignore_for_file: prefer_const_constructors

import 'package:authpages_sqlite/components/reusable_button.dart';
import 'package:authpages_sqlite/components/reusable_icon_container.dart';
import 'package:authpages_sqlite/components/reusable_text_container.dart';
import 'package:authpages_sqlite/screens/homepage.dart';
import 'package:authpages_sqlite/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final Color themeColor = Color(0xff595CFF);

  @override
  Widget build(BuildContext context) {
    String email = '';
    String password;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        statusBarColor: themeColor,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Container(
              width: MediaQuery.of(context).size.width,
              color: themeColor,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "bliss",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "hotel",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "your ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "ideal hotels ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "are just a click away",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ]),
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      height: 650,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            "Login To Your Account",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ReusableTextContainer(
                            hintText: "Email",
                            onChanged: (value) {
                              email = value;
                              print(email);
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ReusableTextContainer(
                            hintText: "Password",
                            onChanged: (value) {
                              password = value;
                              print(password);
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Forgot password?",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: themeColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ReusableButton(
                            text: "Sign In",
                            textColor: Colors.white,
                            bodyColor: themeColor,
                            onTap: () async {
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();

                              prefs.setString('email', email);

                              print("Signed In!!!");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return HomePage();
                                  },
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "- Or sign in with -",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ReusableIconContainer(
                                  FontAwesomeIcons.facebook, Color(0xff4267B2)),
                              SizedBox(
                                width: 15,
                              ),
                              ReusableIconContainer(
                                  FontAwesomeIcons.google, Color(0xff4285F4)),
                              SizedBox(
                                width: 15,
                              ),
                              ReusableIconContainer(
                                  FontAwesomeIcons.twitter, Color(0xff1DA1F2))
                            ],
                          ),
                          SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "Don't have an account? ",
                                style: TextStyle(
                                    color: themeColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              GestureDetector(
                                onTap: () {
                              Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return SignUp();
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  "Sign up!",
                                  style: TextStyle(
                                      color: themeColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
