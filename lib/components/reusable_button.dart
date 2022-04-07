import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final Color textColor;
  final Color bodyColor;
  final String text;
  final Function onTap;

  const ReusableButton(
      {required this.text,
      required this.textColor,
      required this.bodyColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: 300,
        height: 55,
        decoration: BoxDecoration(
          color: bodyColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: textColor,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
