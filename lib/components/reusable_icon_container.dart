import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableIconContainer extends StatelessWidget {
  final IconData icon;
  final Color iconColor;

  ReusableIconContainer(this.icon, this.iconColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          )
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: FaIcon(
          icon,
          size: 30,
          color: iconColor,
        ),
      ),
    );
  }
}
