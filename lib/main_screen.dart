import 'package:flutter/material.dart';

import 'gradient_background.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Number Randomizer',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(    
        appBar: AppBar(title: const Text('Number Randomizer'),),    
        body: const GradientBackground(Color.fromARGB(255, 255, 255, 255),Color.fromARGB(255, 218, 190, 255)))
    );       
          
        
    
    
  }
}