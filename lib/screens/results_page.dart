import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.inerpretation, @required this.bmiResult, @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String inerpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR',),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    inerpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'Re-Calculate',
            ),
          )
        ],
      ),
    );
  }
}
