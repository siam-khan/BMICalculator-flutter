import 'package:bmiproject/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  
final  onTap;
final String buttonTitle;

BottomButton({ required this.buttonTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center
        (child: Text(buttonTitle,
        style: kLargButtonTextStyle,)),
        color:kBottomCardColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}