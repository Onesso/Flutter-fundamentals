import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Center(
      child: TextButton(
        onPressed: () {
          logger.d("button clicked");
        },

        style: TextButton.styleFrom(
          foregroundColor: Colors.white, // Text color
          backgroundColor: Colors.blue, // Button background color
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  // void callFuntion() {
  //   logger.d("button clicked");
  // }
}
