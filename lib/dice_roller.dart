import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceImage = 'assets/images/dice-1.png';

  void rollDice() {
    var roll = randomizer.nextInt(6) + 1;
    setState(() {
      diceImage = 'assets/images/dice-$roll.png';
    });
    /*
    another way:

    void rollDice() {
    var currentRoll = 2; 
    setState(() {
      currentRoll =  Random().nextInt(6) + 1;
    });
     */
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          diceImage,
          //or 'assets/images/dice-$currentRoll.png'
          width: 200,
          height: 200,
        ),
        TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.pink[200],
                padding: const EdgeInsets.all(20),
                textStyle: const TextStyle(fontSize: 28)),
            onPressed: rollDice,
            child: const Text(
              "Roll dice",
            ))
      ],
    );
  }
}
