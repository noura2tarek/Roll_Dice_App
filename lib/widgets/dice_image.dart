import 'package:flutter/material.dart';

class DiceImage extends StatefulWidget {
  const DiceImage({Key? key}) : super(key: key);

  @override
  State<DiceImage> createState() => _DiceImageState();
}

class _DiceImageState extends State<DiceImage> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/dice-1.png",
      width: 200.0,
    );
  }
}
