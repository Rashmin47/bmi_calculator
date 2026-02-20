import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key, required this.bmiResult, required this.resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('BMI CALCULATOR',

      ),
        backgroundColor: Color(0xFF0A0E21),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text(resultText.toUpperCase(), style: kResultTextStyle),
                
                Text(bmiResult, style: kBMITextStyle,),
                Text(interpretation, style: kBodyTextStyle,
                textAlign: TextAlign.center,

                ),
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(
    onTap: () {
    Navigator.pop(context);
    }
          , buttonTitle: 'RECALCULATE',),
        ],
      ),
    );
  }
}
