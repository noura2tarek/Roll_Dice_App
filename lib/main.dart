import 'package:flutter/material.dart';
import 'package:roll_dice_app/screens/roll_dice_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roll Dice App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: const RollDiceScreen(),
    );
  }
}
