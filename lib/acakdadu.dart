import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var nilairandom = 1;
  void btnRandom() {
    setState(() {
      nilairandom = randomizer.nextInt(6) + 1;
      //nextInt(6) hasil = 0-5 || nextInt(6) + 1 hasil = 0-5
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$nilairandom.png",
          width: 120.0,
          height: 120.0,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: btnRandom,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 10),
            primary: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
