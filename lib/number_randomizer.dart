import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

TextEditingController minControler = TextEditingController();
TextEditingController maxControler = TextEditingController();

int minNum = 0;
int maxNum = 0;

String pickedNumber = '';

class NumberRandomizer extends StatefulWidget{
  const NumberRandomizer({super.key});

  @override
  State<NumberRandomizer> createState(){
    return _NumberRandomizerState();
  }
}


class _NumberRandomizerState extends State<NumberRandomizer>{
  @override
  Widget build(BuildContext context) {
    
    return Column(                    
            mainAxisAlignment: MainAxisAlignment.center,            
            children: [TextFormField(
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            controller: minControler,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter min. number',                                  
        )
      ),
      const SizedBox(height: 50),
      TextFormField(
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        controller: maxControler,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Enter max. number',)
        ),
      const SizedBox(height: 50),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            setState(() {
              //pickedNumber = Random().nextInt((maxNum.text as int) - (minNum.text as int) + (minNum.text as int));
              minNum = int.parse(minControler.text);
              maxNum = int.parse(maxControler.text);
              pickedNumber = (Random().nextInt(maxNum+1-minNum) + minNum).toString();
            });
          },       
          style: ElevatedButton.styleFrom(side: const BorderSide(width: 3, color: Color.fromARGB(255, 134, 104, 216)),
          backgroundColor: const Color.fromARGB(255, 202, 202, 202),
          foregroundColor: const Color.fromARGB(255, 19, 19, 16),
          padding: const EdgeInsets.all(15)),
          child: const Text('Pick a random number'),),
          
        ],
      ),
      const SizedBox(height: 50,),
      Text(pickedNumber.toString(),style: GoogleFonts.lato(textStyle: const TextStyle(fontSize: 48,fontWeight: FontWeight.w600)),)
        ]
    );
  }
}





