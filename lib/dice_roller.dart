import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override // should be implemented when statefulwidget is extended
  State<DiceRoller> createState() {
    //State object - like list is a generic value type
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      // function avaiable as we extend Stateful Widget
    });
  }

  // Underscore means that the class is private
  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
      const SizedBox(
          height:
              20), // Alternate approach to adding padding to the button by creating a box of the given size ('height: 20')

      TextButton(
          onPressed:
              rollDice, // the onpressed parameter needs a function as an argument
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //     top: 20), //adding padding to the sides of a button
            foregroundColor:
                Colors.white, //Sets the color of the text ('Roll Dice')
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text(
              "Roll Dice")) //Text that will be displayed on the button
    ]);
  }
}
