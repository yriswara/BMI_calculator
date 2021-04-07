import 'package:flutter/material.dart';
import 'package:bmi_calculator/theme.dart';
import 'package:bmi_calculator/calculator_logic.dart';
import 'btn_calculate.dart';

class ResultCard extends StatelessWidget {
  String bmiResult = "00.0";
  final String resultText;
  final String label;
  final String interpretation;

  ResultCard(
      {this.bmiResult, this.resultText, this.label, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 210,
      decoration: BoxDecoration(
        gradient: blueGradient2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Text(
              '$label',
              style: whiteStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 28),
            child: Text(
              '$bmiResult',
              style: TextStyle(
                  fontSize: 44, fontWeight: FontWeight.w600, color: whiteColor),
            ),
          ),
          Container(
            child: Text(
              '$resultText',
              style: TextStyle(fontSize: 16, color: greenColor),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            child: Text(
              '$interpretation',
              style: TextStyle(fontSize: 16, color: whiteColor),
            ),
          ),
        ],
      ),
    );
  }
}

// width: MediaQuery.of(context).size.width,
    // height: 210,
    // decoration: BoxDecoration(
    //   gradient: blueGradient2,
    // ),