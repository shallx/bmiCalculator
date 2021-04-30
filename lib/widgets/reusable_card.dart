import 'package:flutter/material.dart';

// const cardBackgroundColor = Color(0xFF111328);
const activeCardColor = Color(0xFF1D1E33);

class ReusableCard extends StatelessWidget {
  
  ReusableCard({this.color = activeCardColor, this.cardChild, this.onTap});
  final Color color;
  final Widget cardChild;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: this.color,
        ),
      ),
    );
  }
}