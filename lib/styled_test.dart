import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key, required this.onPressed});

  final String text;

  final VoidCallback onPressed;

  @override
  Widget build(context) {
    return Center(
      child: TextButton(
        onPressed: onPressed,
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
