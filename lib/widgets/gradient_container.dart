import 'package:flutter/material.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer(
      {Key? key,
      this.containerChild,
      required this.color1,
      required this.color2})
      : super(key: key);

  final AlignmentGeometry startAlignment = Alignment.centerLeft;
  final AlignmentGeometry endAlignment = Alignment.centerRight;
  final Widget? containerChild;
  final Color color1;
  final Color color2;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: widget.startAlignment,
          end: widget.endAlignment,
          colors: [
            widget.color1,
            widget.color2,
          ],
        ),
      ),
      child: widget.containerChild,
    );
  }
}
