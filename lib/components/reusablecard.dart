import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
 
  // ignore: use_key_in_widget_constructors
 ReusableCard ({required this.colour,required this.cardChild,this.onpressed,
 
 });

 final Color colour;
 final  cardChild;
 final  onpressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: GestureDetector(
          onTap: onpressed,
          child: Container(
            child: cardChild,
          margin: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(color: const Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10.0),
          
          ),
          ),
        ),
      ),
    );
  }
}