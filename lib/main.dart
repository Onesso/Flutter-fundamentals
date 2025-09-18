import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  List<Color> twoColors = [Color(0xFF191414), Color.fromARGB(255, 3, 37, 15)];
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 1.0,
        ),
        body: GradientContainer(colors: twoColors),
      ),
    ),
  );
}
