import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF191414),
                Color.fromARGB(255, 20, 131, 59),
              ],
              stops: [0.0, 1.0],
            ),
          ),
          child: const Center(
            child: Text("compulsary name parameters"),
          ),
        ),
      ),
    ),
  );
}
