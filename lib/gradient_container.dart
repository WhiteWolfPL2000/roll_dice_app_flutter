import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';
import './dice_roller.dart';

const startAliment = Alignment.topLeft;
const endAliment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  GradientContainer.purple({super.key})
      : color1 = Color.fromARGB(255, 70, 22, 203),
        color2 = Color.fromARGB(255, 159, 128, 245);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAliment,
          end: endAliment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
