import 'package:bmi_calculator/theme.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String image;
  final String label;
  final Color labelColor;
  final Color iconColor;

  IconContent({this.image, this.label, this.labelColor, this.iconColor});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Image.asset(
                  image,
                  width: 22,
                  color: iconColor,
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                label,
                style: whiteStyle.copyWith(color: labelColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
