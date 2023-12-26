import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 27.0,
        //backgroundColor: Colors.amber,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.italic,
        letterSpacing: 2.0,
        wordSpacing: 4.0,
        shadows: [
          Shadow(
            color: Colors.yellowAccent,
            blurRadius: 10.0,
            offset: Offset(-2, 3),
          ),
        ],
        // decoration: TextDecoration.combine(
        //   [
        //     TextDecoration.lineThrough,
        //     TextDecoration.underline,
        //     TextDecoration.overline,
        //   ],
        // ),
        decorationColor: Color.fromRGBO(0, 0, 0, 1.0),
        decorationStyle: TextDecorationStyle.wavy,
        decorationThickness: 1,
      ),
    );
  }
}
