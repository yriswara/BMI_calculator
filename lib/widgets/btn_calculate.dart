import 'package:flutter/material.dart';
import 'package:bmi_calculator/theme.dart';

class BtnCalculate extends StatelessWidget {
  final Function onTap;
  final String btnTitle;
  final Gradient gradient;

  BtnCalculate({this.onTap, this.btnTitle, this.gradient});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          child: Center(
            child: Text(
              btnTitle,
              style: whiteStyle,
            ),
          ),
          decoration: BoxDecoration(
              gradient: blueGradient2,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    color: Color(0xffBACCE7),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(4, 4)),
              ]),
          margin: EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          height: 50),
    );
  }
}
