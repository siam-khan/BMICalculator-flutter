import 'package:bmiproject/components/bottom_button.dart';
import 'package:bmiproject/components/icon_content.dart';
import 'package:bmiproject/screens/result_page.dart';
import 'package:bmiproject/components/reusablecard.dart';
import 'package:bmiproject/components/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import 'package:bmiproject/calculator_brain.dart';

enum GenderSelection{ male, female,}



class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
 
    @override
    _InputPageState createState() => _InputPageState();
  }
  
  class _InputPageState extends State<InputPage> {
 // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
 late dynamic GenderSelection, selectedGender;

int height= 180;
int weight =60;
int age =20;


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          // backgroundColor: Color(0xFF0A0E21),
          title: const Text("BMI CALCULATOR"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Expanded(child: 
           Row(
             children: [
               Expanded(
                 child: ReusableCard(

               onpressed: () {
                  setState(() {
                    selectedGender = GenderSelection.male;
                  });
                },
                   colour: selectedGender==GenderSelection.male? kActiveCardColour: kInactiveCardColour,
                   cardChild:IconContent(icon: FontAwesomeIcons.mars, label: "MALE"),
                   ),
                   ),
                Expanded(child: ReusableCard(
                   onpressed: () {
                    setState(() {
                      selectedGender = GenderSelection.female;
                    });
                  },
                  
                  colour: selectedGender == GenderSelection.female? kActiveCardColour: kInactiveCardColour,
                 cardChild: IconContent(icon: FontAwesomeIcons.venus, label: "FMALE"),),
                 
               ),
             ],
             ),
             ),
           Expanded(child: ReusableCard(colour: kActiveCardColour,
            
           cardChild: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children:  [
               Text("HEIGHT",style: kLabelTextStyle,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.baseline,
                 textBaseline: TextBaseline.alphabetic,
                 children: [
                   Text(
                     height.toString(),
                   style: kNumberTextStyle),
                   Text("cm",
                    style: kNumberTextStyle,
                   )
                 ],
               ),
               SliderTheme(
                 data:SliderTheme.of(context).copyWith(
                   activeTrackColor: Colors.blue,
                   thumbColor: Colors.redAccent,
                   overlayColor: Colors.red,
                   thumbShape: RoundSliderThumbShape(
                     enabledThumbRadius: 15.0
                   ),
                   overlayShape: RoundSliderOverlayShape(overlayRadius:30.0 ),
                 ) ,
                 child: Slider(
                 value: height.toDouble(),
                 min: 120.0,
                 max: 220.0,
                 
                 inactiveColor: Color(0xFF8D8E98),
                 onChanged: (double newValue){
                   setState(() {
                     height = newValue.round();
                   });
                             
                 } ),
               ),
             ],
           ),
             ),
),
            Expanded(child: 
            Row(children: [
              Expanded(child: ReusableCard(colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("WEIGHT",style: kLabelTextStyle,
                  ),
                  Text(weight.toString(),
                   style: kNumberTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundIconButton(
                        icon: FontAwesomeIcons.minus,
                        onpress:(){
                          setState(() {
                            
                            weight--;
                          });
                        } ,
                      ),
                      SizedBox(width: 10.0,),
                       RoundIconButton(
                        icon: FontAwesomeIcons.plus,
                        onpress: (){
                          setState(() {
                            weight++;
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),  
              
          
              
               ),
),
               Expanded(child: ReusableCard(colour: kActiveCardColour, 
               cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "AGE",style: kLabelTextStyle,
                  ),
                  Text(age.toString(),
                   style: kNumberTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundIconButton(
                        icon: FontAwesomeIcons.minus,
                        onpress:(){
                          setState(() {
                            
                            age--;
                          });
                        } ,
                      ),
                      SizedBox(width: 10.0,),
                       RoundIconButton(
                        icon: FontAwesomeIcons.plus,
                        onpress: (){
                          setState(() {
                            age++;
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),  
               
               
               ),
),
            ],)
            ),

            BottomButton(buttonTitle: "CALCULATE", 
            onTap:  (){

              
              CalculatorBrian calc =CalculatorBrian(height: height,weight: weight);


        Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(

      bmiResult: calc.calculateBMI(),
      resultText: calc.getResult(),
      interpretation: calc.getInterpreation(),

        ),));
      },)
         ],
        ),
        
      );
    }
  }












