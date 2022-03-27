import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
    const InputPage({ Key? key }) : super(key: key);
  
    @override
    State<InputPage> createState() => _InputPageState();
  }
  
  class _InputPageState extends State<InputPage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          // backgroundColor: Color(0xFF0A0E21),
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
         children: [
           Expanded(child: 
           Row(
             children: [
               Expanded(
                 child: ReusableCard(
                   colour: Color(0xFF1D1E33),),
               ),
                Expanded(child: ReusableCard(colour: Color(0xFF1D1E33),),
                 
               ),
             ],
             ),),
           
           Expanded(child: ReusableCard(colour: Color(0xFF1D1E33),),
),
            Expanded(child: 
            Row(children: [
              Expanded(child: ReusableCard(colour: Color(0xFF1D1E33),),
),
               Expanded(child: ReusableCard(colour: Color(0xFF1D1E33),),
),
            ],)
            ),
         ],
        ),
        
      );
    }
  }

class ReusableCard extends StatelessWidget {
 
  ReusableCard({required this.colour});

 final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.all(15.0),
    decoration: BoxDecoration(color: Color(0xFF1D1E33),
    borderRadius: BorderRadius.circular(10.0),
    
    ),
               );
  }
}