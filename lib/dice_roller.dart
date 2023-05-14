import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return (_DiceRollerState());
  }
}

// Private class.
class _DiceRollerState extends State<DiceRoller> {
  var rollNum = 3;

  void rollDice() {
    // Update UI by making flutter re-execute build().
    setState(() {
      // Change the state.
      rollNum = randomizer.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        "assets/images/dice-$rollNum.png",
        width: 300,
      ),
      const SizedBox(
        height: 15,
      ), // useful when we need to create gaps.
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
          backgroundColor: Colors.red.shade400,
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 28,
          ),
        ),
        child: const Text("Roll!"),
      ),
    ]));
  }
}
