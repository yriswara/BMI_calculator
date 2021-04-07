import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color blueLeft = Color(0xff54A3FB);
Color blueRight = Color(0xff337AF6);
Color whiteColor = Color(0xffFFFFFF);
Color greenColor = Color(0xff13FC1D);
Color greyColor = Color(0xff9EA3AB);

Gradient blueGradient1 = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [blueLeft, blueRight],
  stops: [0.2, 0.8],
);

Gradient blueGradient2 = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [blueLeft, blueRight],
  stops: [0.2, 0.8],
);

Gradient whiteGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Colors.white,
    Colors.white,
  ],
);

TextStyle whiteStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.w400, fontSize: 16, color: whiteColor);

TextStyle greyStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.w600, fontSize: 16, color: greyColor);

TextStyle greenStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.w500, fontSize: 16, color: greenColor);
