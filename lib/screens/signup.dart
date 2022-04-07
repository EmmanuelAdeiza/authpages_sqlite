// ignore_for_file: prefer_const_constructors

import 'package:authpages_sqlite/components/reusable_button.dart';
import 'package:authpages_sqlite/components/reusable_icon_container.dart';
import 'package:authpages_sqlite/components/reusable_text_container.dart';
import 'package:authpages_sqlite/db_operations.dart';
import 'package:authpages_sqlite/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final Color themeColor = Color(0xff595CFF);
  final Color themeSecColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    String firstName = '';
    String lastName = '';
    String email = '';

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
                // reverse: true,
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
                              color: themeSecColor,
                              fontSize: 55,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "hotel",
                          style: TextStyle(
                              color: themeSecColor,
                              fontSize: 55,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "your ",
                        style: TextStyle(
                          color: themeSecColor,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "ideal hotels ",
                        style: TextStyle(
                            color: themeSecColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "are just a click away",
                        style: TextStyle(
                          color: themeSecColor,
                          fontSize: 16,
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      height: 550,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: themeSecColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "Create An Account",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ReusableTextContainer(
                            hintText: "First Name",
                            onChanged: (value) {
                              firstName = value;
                              print(firstName);
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ReusableTextContainer(
                            hintText: "Last Name",
                            onChanged: (value) {
                              lastName = value;
                              print(lastName);
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ReusableTextContainer(
                            hintText: "Email",
                            onChanged: (value) {
                              email = value;
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
                            text: "Sign up",
                            textColor: themeSecColor,
                            bodyColor: themeColor,
                            onTap: () async {
                              print("object");
                              DBOperations(db)
                                  .insertRecord(firstName, lastName, email);

                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              prefs.setString('email', email);
                              print("added $firstName $lastName");

                              print("Signed Up!!!");
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "- Or sign up with -",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
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
                            children: [
                              Text(
                                "Already have an account? ",
                                style: TextStyle(
                                    color: themeColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/login');
                                },
                                child: Text(
                                  "Sign in!",
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
