import 'package:flutter/material.dart';
import 'package:roll_dice/styled_test.dart';

Alignment topLeft = Alignment.topLeft;
Alignment bottomRight = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  }); //this constructor is used to initialize the widget.

  @override
  Widget build(context) {
    return SafeArea(
      bottom: false,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: topLeft,
            end: bottomRight,
            colors: [
              Color(0xFF191414),
              Color.fromARGB(255, 3, 37, 15),
            ],
          ),
        ),
        child: StyledText("hello world"),
      ),
    );
  }
}
