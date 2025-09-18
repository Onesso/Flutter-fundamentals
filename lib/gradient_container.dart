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
    final double screenWidth = MediaQuery.of(context).size.width;

    final double imageWidth = screenWidth * 0.75;

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

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assests/images/dice-1.png",
                width: imageWidth,
              ),
              StyledText("roll the dice"),
            ],
          ),
        ),
      ),
    );
  }
}
