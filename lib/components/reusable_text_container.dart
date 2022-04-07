// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:feather_icons_svg/feather_icons_svg.dart';

class ReusableTextContainer extends StatelessWidget {
  // final FeatherIcons icon;
  // final FeatherIcons hiddenIcon;
  final String hintText;
  final Function(String)? onChanged;

  ReusableTextContainer({
    required this.hintText, required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 300,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.25),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: TextField(
                onChanged: onChanged,
                cursorHeight: 20,
                maxLines: 1,
                decoration: InputDecoration(
                    hintTextDirection: TextDirection.ltr,
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: Color(0xff595CFF),
                      fontSize: 20,
                    ),
                    alignLabelWithHint: true),
              ),
            )
          ],
        ),
      ),
    );
  }
}
