import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF090C22),
        primaryColor: Color(0xFF090C22),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF090C22),
          title: Center(
            child: Text(
              'BMI Calculator',
            ),
          ),
        ),
        body: Input_pages(),
      ),
    );
  }
}
