import 'package:flutter/material.dart';
import 'package:roll_dice/styled_test.dart';

Alignment topLeft = Alignment.topLeft;
Alignment bottomRight = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.colors,
  }); //this constructor is used to initialize the widget.

  final List<Color> colors;

  @override
  Widget build(context) {
    return SafeArea(
      bottom: false,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: topLeft,
            end: bottomRight,
            colors: colors,
          ),
        ),
        child: StyledText("hello world"),
      ),
    );
  }
}
