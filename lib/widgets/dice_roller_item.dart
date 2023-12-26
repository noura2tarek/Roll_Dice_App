import 'package:flutter/material.dart';
import 'dart:developer' as dev;
import 'dart:math';

final random = Random();

class DiceRollerItem extends StatefulWidget {
  const DiceRollerItem({Key? key}) : super(key: key);

  @override
  State<DiceRollerItem> createState() => _DiceRollerItemState();
}

class _DiceRollerItemState extends State<DiceRollerItem> {
  int activeDice = 1;

  void changeDice() {
    setState(() {
      activeDice = random.nextInt(6) + 1;
    });
    dev.log(" The Button is Clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          "assets/images/dice-$activeDice.png",
          width: 200.0,
        ),
        TextButton(
          onPressed: changeDice,
          style: TextButton.styleFrom(
            backgroundColor: Colors.purpleAccent,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 25.0),
          ),
          child: const Text(
            "Role Dice",
          ),
        ),
      ],
    );
  }
}
