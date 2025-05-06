import 'package:flutter/material.dart';
import "package:first_app/styled_text.dart";
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImage = 'assets/images/dice-6.png';
  final random = Random();
  void rollDice() {
    int randomNumber = random.nextInt(6) + 1;
    setState(() {
      activeImage = 'assets/images/dice-$randomNumber.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImage,
          width: 220,
        ),
        const SizedBox(height: 200),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                ),
            child: const StyledText("Roll a Dice"))
      ],
    );
  }
}
