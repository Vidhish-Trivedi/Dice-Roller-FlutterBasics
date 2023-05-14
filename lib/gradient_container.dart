import 'package:flutter/material.dart';
import 'package:dice_roller/styled_text.dart';
import 'package:dice_roller/dice_roller.dart';

// const is used when value is fixed at compile-time, final is useful when
// value is assigned dynamically, say through some function.
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// Classes which are meant to be Widgets have to extend certain classes.
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  // Another way to define a constructor.
  GradientContainer.red({super.key})
      : colors = [Colors.red, Colors.orange, Colors.pink];

  @override
  Widget build(BuildContext context) {
    // Executed for us by flutter, context is passed by flutter.
    return (Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        // child: StyledText("Hi there!"),
        child: DiceRoller(),
      ),
    ));
  }
}
