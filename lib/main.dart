import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF090C21),
        colorScheme: ColorScheme.light(
          primary: Color(0xFF090C21),
        ),
      ),
      home: InputPage(),

    );
  }
}

