import 'package:flutter/material.dart';
import 'package:dice_roller/gradient_container.dart';

void main() {
  // Displays the app elements on the screen.
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.cyan,
        // Can also use Color(...) OR Color.fromARGB(alpha, r, g, b)
        body: GradientContainer([
          Color.fromARGB(255, 25, 175, 225),
          Color.fromARGB(255, 100, 100, 150),
          Color.fromARGB(255, 50, 150, 200),
        ]),
      ),
    ),
  );
}
