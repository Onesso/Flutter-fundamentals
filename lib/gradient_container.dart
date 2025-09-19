import 'package:flutter/material.dart';
import 'package:roll_dice/styled_test.dart';
import 'dart:math';
import 'package:flutter/services.dart';

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
  var currentDiceRoll = 2;

  void _vibrateLightly() {
    HapticFeedback.mediumImpact();
  }

  void rollDiceFunction() {
    logger.d("button clicked");

    _vibrateLightly();

    int newDiceRoll;

    do {
      newDiceRoll = Random().nextInt(6) + 1;
    } while (newDiceRoll == currentDiceRoll);

    setState(() {
      setState(() {
        currentDiceRoll = newDiceRoll;
      });
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
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  // Rotation animation
                  final rotation = Tween<double>(
                    begin: 0.0,
                    end: 1.0,
                  ).animate(animation);

                  // Scaling animation
                  final scale = Tween<double>(begin: 0.5, end: 1.0).animate(
                    CurvedAnimation(
                      parent: animation,
                      curve: Curves.easeIn,
                    ),
                  );

                  return ScaleTransition(
                    scale: scale,
                    child: RotationTransition(
                      turns: rotation,
                      child: child,
                    ),
                  );
                },
                child: Image.asset(
                  key: ValueKey<int>(currentDiceRoll),
                  "assests/images/dice-$currentDiceRoll.png",
                  width: imageWidth,
                ),
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
