import 'package:bmi_calculator/theme.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Gradient gradientColor;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({this.gradientColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 114,
        height: 74,
        child: cardChild,
        decoration: BoxDecoration(
            gradient: gradientColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: Color(0xffBACCE7),
                  spreadRadius: 2,
                  blurRadius: 6,
                  offset: Offset(4, 4)),
            ]),
      ),
    );
  }
}
