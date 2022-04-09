import 'package:bmiproject/components/bottom_button.dart';
import 'package:bmiproject/components/reusablecard.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
class ResultPage extends StatelessWidget {
  
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage({required this.bmiResult,required this.interpretation,required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI"),
        ),

        body:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(

              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text("Your Result",
                style: KTitleTextStyle,),
              ),
            ),
            Expanded(child:ReusableCard(colour:kActiveCardColour,
            
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(resultText.toUpperCase(),
                style: KresultTextStyle,),
                Text("bmiResult",
                style: KBMITextStyle ,),
                Text("interpretation",
                textAlign: TextAlign.center,
                style:KBodyTextStyle ,)
              ],
            ),
            
            
            ) ,
            flex:5 ,),
            BottomButton(buttonTitle: "RE-CALCULATE",
             onTap: (){
               Navigator.pop(context);
             })
          ],
        ),
      
    );
  }
}