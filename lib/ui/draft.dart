
// // enum Gender {
// //   male,
// //   female,
// // }

// // class InputPage extends StatefulWidget {
// //   @override
// //   _InputPageState createState() => _InputPageState();
// // }

// // class _InputPageState extends State<InputPage> {
// //   Gender selectedGender;
// //   int height = 156;
// //   int weight = 54;
// //   int age = 20;
// //   double result = 00.0;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: 210,
//             decoration: BoxDecoration(
//               gradient: blueGradient2,
//             ),
//             child: ResultCard(
//               label: 'BMI CALCULATOR',
//             ),
//           ),
//           SizedBox(
//             height: 24,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               // NOTE: Selected Gender Male
//               Expanded(
//                 child: Container(
//                   margin: EdgeInsets.only(left: 16, right: 8),
//                   child: ReusableCard(
//                     onPress: () {
//                       setState(() {
//                         selectedGender = Gender.male;
//                       });
//                     },
//                     gradientColor: (selectedGender == Gender.male)
//                         ? blueGradient1
//                         : whiteGradient,
//                     cardChild: IconContent(
//                       image: selectedGender == Gender.male
//                           ? 'assets/male.png'
//                           : 'assets/maleinactive.png',
//                       label: 'MALE',
//                       labelColor: selectedGender == Gender.male
//                           ? Colors.white
//                           : Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//               // NOTE: Selected Gender Female
//               Expanded(
//                 child: Container(
//                   margin: EdgeInsets.only(right: 16, left: 8),
//                   child: ReusableCard(
//                     onPress: () {
//                       setState(() {
//                         selectedGender = Gender.female;
//                       });
//                     },
//                     gradientColor: (selectedGender == Gender.female)
//                         ? blueGradient1
//                         : whiteGradient,
//                     cardChild: IconContent(
//                       image: selectedGender == Gender.female
//                           ? 'assets/female.png'
//                           : 'assets/femaleinactive.png',
//                       label: 'FEMALE',
//                       labelColor: selectedGender == Gender.female
//                           ? Colors.white
//                           : Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 24),
//           // NOTE: HEIGHT
//           Container(
//             margin: EdgeInsets.only(left: 16, right: 16),
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 gradient: whiteGradient,
//                 boxShadow: [
//                   BoxShadow(
//                       color: Color(0xffBACCE7),
//                       spreadRadius: 2,
//                       blurRadius: 6,
//                       offset: Offset(4, 4)),
//                 ]),
//             child: Column(
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(bottom: 16),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(16),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'HEIGHT',
//                               style: greyStyle,
//                             ),
//                             Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   child: Text(height.toString(),
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w700,
//                                           fontSize: 24)),
//                                 ),
//                                 Container(
//                                   margin: EdgeInsets.only(top: 6),
//                                   child: Text(
//                                     'cm',
//                                     style: greyStyle,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         child: SliderTheme(
//                           data: SliderTheme.of(context).copyWith(
//                             inactiveTrackColor: Color(0xFFE6E6E6),
//                             activeTrackColor: Color(0xff337AF6),
//                             thumbColor: greenColor,
//                             overlayColor: Color(0x2913FC1D),
//                             thumbShape:
//                                 RoundSliderThumbShape(enabledThumbRadius: 14.0),
//                             overlayShape:
//                                 RoundSliderOverlayShape(overlayRadius: 22.0),
//                           ),
//                           child: Slider(
//                             value: height.toDouble(),
//                             min: 120.0,
//                             max: 220.0,
//                             onChanged: (double newValue) {
//                               setState(() {
//                                 height = newValue.round();
//                               });
//                             },
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 24,
//           ),
//           Row(
//             children: [
//               // NOTE: BUTTON WEIGHT
//               Expanded(
//                 child: Container(
//                   margin: EdgeInsets.only(left: 16, right: 8),
//                   width: 146,
//                   height: 96,
//                   decoration: BoxDecoration(
//                     color: whiteColor,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Color(0xffBACCE7),
//                         spreadRadius: 2,
//                         blurRadius: 6,
//                         offset: Offset(4, 4),
//                       ),
//                     ],
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(bottom: 8),
//                         child: Text(
//                           'WEIGHT',
//                           style: greyStyle,
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Container(
//                             child: CircleBtn(
//                               icon: FontAwesomeIcons.minus,
//                               onPressed: () {
//                                 setState(() {
//                                   weight--;
//                                 });
//                               },
//                             ),
//                           ),
//                           Text(
//                             weight.toString(),
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w600, fontSize: 24),
//                           ),
//                           Container(
//                             child: CircleBtn(
//                               icon: FontAwesomeIcons.plus,
//                               onPressed: () {
//                                 setState(() {
//                                   weight++;
//                                 });
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 6,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               // NOTE: BUTTON AGE
//               Expanded(
//                 child: Container(
//                   margin: EdgeInsets.only(right: 16, left: 8),
//                   width: 146,
//                   height: 96,
//                   decoration: BoxDecoration(
//                     color: whiteColor,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Color(0xffBACCE7),
//                         spreadRadius: 2,
//                         blurRadius: 6,
//                         offset: Offset(4, 4),
//                       ),
//                     ],
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(bottom: 8),
//                         child: Text(
//                           'AGE',
//                           style: greyStyle,
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Container(
//                             child: CircleBtn(
//                               icon: FontAwesomeIcons.minus,
//                               onPressed: () {
//                                 setState(() {
//                                   age--;
//                                 });
//                               },
//                             ),
//                           ),
//                           Text(
//                             age.toString(),
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w600, fontSize: 24),
//                           ),
//                           GestureDetector(
//                             child: Container(
//                               child: CircleBtn(
//                                 icon: FontAwesomeIcons.plus,
//                                 onPressed: () {
//                                   setState(() {
//                                     age++;
//                                   });
//                                 },
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 6,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 30),
//           // NOTE : BUTTON CALCULATE
//           BtnCalculate(
//             btnTitle: 'CALCULATE',
//             onTap: () {
//               CalculatorLogic calc =
//                   CalculatorLogic(height: height, weight: weight);

//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => ResultCard(
//                             bmiResult: calc.calculateBMI().toString(),
//                             resultText: calc.getResult(),
//                             interpretation: calc.getInterpretation(),
//                           )));
//             },
//           ),
//         ],
//       ),
//     );
  

