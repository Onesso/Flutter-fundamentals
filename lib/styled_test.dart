import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  // var activeDice = "assests/images/dice-1.png";

  void rollDiceFunction() {
    logger.d("button clicked");
  }

  @override
  Widget build(context) {
    return Center(
      child: TextButton(
        onPressed: rollDiceFunction,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white, // Text color
          backgroundColor: Colors.blue, // Button background color
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
          textStyle: TextStyle(
            fontSize: 18,
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
