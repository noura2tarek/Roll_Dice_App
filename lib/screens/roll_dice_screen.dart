import 'package:flutter/material.dart';
import 'package:roll_dice_app/widgets/dice_roller_item.dart';
import 'package:roll_dice_app/widgets/gradient_container.dart';

class RollDiceScreen extends StatelessWidget {
  const RollDiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 80, 2, 38).withOpacity(0.5),
        title: const Text("Roll Dice App!"),
      ),
      body: const GradientContainer(
        color1: Color.fromARGB(255, 80, 2, 38),
        color2: Color.fromARGB(255, 69, 15, 122),
        containerChild: Center(child: DiceRollerItem()),
      ),
    );
  }
}
