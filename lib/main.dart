import 'package:flutter/material.dart';
import 'ui/home.dart';
import 'ui/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Color(0xffF4F6F8),
      home: Home(),
    );
  }
}
