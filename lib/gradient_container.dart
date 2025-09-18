import 'package:flutter/material.dart';
import 'package:roll_dice/styled_test.dart';

Alignment topLeft = Alignment.topLeft;
Alignment bottomRight = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
  const GradientContainer({
    super.key,
    required this.colors,
  });

  final List<Color> colors;
  @override
  State<GradientContainer> createState() {
    return _GradientContainerState();
  }
}

class _GradientContainerState extends State<GradientContainer> {
  var activeDice = "assests/images/dice-1.png";

  void rollDiceFunction() {
    logger.d("button clicked");
    setState(() {
      activeDice = "assests/images/dice-4.png"; // Correctly change the state
    });
  }

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
            colors: widget.colors,
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                activeDice,
                width: imageWidth,
              ),
              StyledText(
                "Roll",
                onPressed: rollDiceFunction,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
