import 'package:flutter/material.dart';

import 'package:basics/dice_roller.dart';

// variables
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//Initializing a variable name and its data type without assigning a value
// Alignment? startAlignment

// classes - object oriented programming
// classes are a blueprint for creating objects.
class GradientContainer extends StatelessWidget {
  // stateful widget indicates that the data may change within the widget
  const GradientContainer(
    this.colors, {
    super.key,
  }); // key argument is forwarded to StatelessWidget

  final List<Color> colors;

  @override //notation to show that a mehtod is being overridden
  Widget build(context) {
    // build is a function with parameter context and return type Widget
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  } // Context is required to execute the build method
}
