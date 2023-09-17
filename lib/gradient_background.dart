import 'package:flutter/material.dart';
import 'number_randomizer.dart';

final TextEditingController minNum = TextEditingController();
final TextEditingController maxNum = TextEditingController();

class GradientBackground extends StatelessWidget{
  const GradientBackground(this.topColor, this.bottomColor, {super.key});

  final Color topColor;
  final Color bottomColor;


  @override
  Widget build(BuildContext context) {
    return Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                topColor, bottomColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,                
           )
          ),
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: NumberRandomizer(),
          )
          )
          
          ;
  }
}
