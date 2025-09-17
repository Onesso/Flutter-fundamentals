import 'package:flutter/material.dart';
import 'package:roll_dice/styled_test.dart';

Alignment topLeft = Alignment.topLeft;
Alignment bottomRight = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.primaryColor,
    this.secondaryColor, {
    super.key,
  }); //this constructor is used to initialize the widget.

  final Color primaryColor;

  final Color secondaryColor;

  @override
  Widget build(context) {
    return SafeArea(
      bottom: false,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: topLeft,
            end: bottomRight,
            colors: [primaryColor, secondaryColor],
          ),
        ),
        child: StyledText("hello world"),
      ),
    );
  }
}
