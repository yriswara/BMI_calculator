import 'package:bmi_calculator/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CircleBtn extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  CircleBtn({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          width: 30,
          height: 30,
          decoration:
              BoxDecoration(shape: BoxShape.circle, gradient: blueGradient1),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return new Icon(
                        icon,
                        color: whiteColor,
                        size: 12,
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
