import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/theme.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/circle_btn.dart';
import 'package:bmi_calculator/widgets/btn_calculate.dart';
import 'package:bmi_calculator/calculator_logic.dart';
import 'dart:math';
import 'home.dart';

enum Gender {
  male,
  female,
}

class InputPage extends State<Home> {
  // final TextEditingController _ageController = new TextEditingController();
  // final TextEditingController _heightController = new TextEditingController();
  // final TextEditingController _weightController = new TextEditingController();
  // final TextEditingController _finalBMIController = new TextEditingController();
  // final TextEditingController _resultController = new TextEditingController();

  Gender selectedGender;
  int _weight = 65;
  int _height = 170;
  int _age = 20;
  double _bmi = 0.0;
  int _finalBMI;
  String _result;

  void _calculateBMI() {
    setState(() {
      // _weight = int.parse(_weightController.text);
      // _height = int.parse(_heightController.text);
      _bmi = _weight / pow(_height / 100, 2);
      _finalBMI = _bmi.round();

      if (_bmi <= 18) {
        _result = "You are Underweight";
      } else if (_bmi > 18 && _bmi <= 25) {
        _result = "You are Perfect";
      } else if (_bmi > 25 && _bmi <= 30) {
        _result = "You are Overweight";
      } else if (_bmi > 30) {
        _result = "You are Obese";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 210,
            decoration: BoxDecoration(
              gradient: blueGradient2,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'BMI CALCULATOR',
                  style: whiteStyle,
                ),
                SizedBox(
                  height: 24,
                ),
                Column(
                  children: [
                    _finalBMI == null
                        ? Text(
                            '0',
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 46,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        : Text('$_finalBMI',
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: 46,
                                fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: Column(
                    children: [
                      _result == null
                          ? Text(
                              'RESULT',
                              style: greenStyle,
                            )
                          : Text('$_result', style: greenStyle),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // NOTE: Selected Gender Male
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 16, right: 8),
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    gradientColor: (selectedGender == Gender.male)
                        ? blueGradient1
                        : whiteGradient,
                    cardChild: IconContent(
                      image: 'assets/male.png',
                      iconColor: selectedGender == Gender.male
                          ? whiteColor
                          : Colors.blue,
                      label: 'MALE',
                      labelColor: selectedGender == Gender.male
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
              // NOTE: Selected Gender Female
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 16, left: 8),
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    gradientColor: (selectedGender == Gender.female)
                        ? blueGradient1
                        : whiteGradient,
                    cardChild: IconContent(
                      image: 'assets/female.png',
                      iconColor: selectedGender == Gender.female
                          ? whiteColor
                          : Colors.blue,
                      label: 'FEMALE',
                      labelColor: selectedGender == Gender.female
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          // NOTE: HEIGHT
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: whiteGradient,
                boxShadow: [
                  BoxShadow(
                      color: Color(0xffBACCE7),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: Offset(4, 4)),
                ]),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'HEIGHT',
                              style: greyStyle,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text('$_height',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 24)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 6),
                                  child: Text(
                                    'cm',
                                    style: greyStyle,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xFFE6E6E6),
                            activeTrackColor: Color(0xff337AF6),
                            thumbColor: greenColor,
                            overlayColor: Color(0x2913FC1D),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 14.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 22.0),
                          ),
                          child: Slider(
                            value: _height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newValue) {
                              setState(() {
                                _height = newValue.round();
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              // NOTE: BUTTON WEIGHT
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 16, right: 8),
                  width: 146,
                  height: 96,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffBACCE7),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: Text(
                          'WEIGHT',
                          style: greyStyle,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: CircleBtn(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  _weight--;
                                });
                              },
                            ),
                          ),
                          Text(
                            '$_weight',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 24),
                          ),
                          Container(
                            child: CircleBtn(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  _weight++;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                ),
              ),
              // NOTE: BUTTON AGE
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 16, left: 8),
                  width: 146,
                  height: 96,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffBACCE7),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: Text(
                          'AGE',
                          style: greyStyle,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: CircleBtn(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  _age--;
                                });
                              },
                            ),
                          ),
                          Text(
                            _age.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 24),
                          ),
                          GestureDetector(
                            child: Container(
                              child: CircleBtn(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    _age++;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          // NOTE : BUTTON CALCULATE
          BtnCalculate(btnTitle: 'CALCULATE', onTap: _calculateBMI),
        ],
      ),
    );
  }
}
