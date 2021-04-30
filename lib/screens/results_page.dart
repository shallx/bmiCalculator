import 'package:bmiCalculator/widgets/bottom_button.dart';
import 'package:bmiCalculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmiCalculator/constants.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmi, @required this.result, @required this.interpretation});

  final String bmi;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kNumberTextStyle
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(result, style: kResultTextStyle,),
                  Text(bmi, style: kBMITextStyle,),
                  Text(interpretation, textAlign: TextAlign.center, style: kBodyTextStyle,)
                ],
              ),
            ),
          ),
          BottomButton(
            title: "RE-CALCULATE",
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],
      )
    );
  }
}