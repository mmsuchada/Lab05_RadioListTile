import 'package:flutter/material.dart';
import 'package:lab01_firstproject_133/pages/firstpages.dart';

void main() {
  runApp(const FirstPages());
}


class FirstPages extends StatelessWidget {
  const FirstPages({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const FisrtPages(title: 'Suchada Mild'),
    );
  }
}

