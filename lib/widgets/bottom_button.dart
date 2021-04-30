import 'package:flutter/material.dart';
import 'package:bmiCalculator/constants.dart';

class BottomButton extends StatelessWidget {
  
  BottomButton({this.onTap, this.title});

  final Function onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}