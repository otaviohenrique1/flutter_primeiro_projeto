import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  final int dificultyLevel;

  const Difficulty({
    required this.dificultyLevel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Star(dificultyLevel: dificultyLevel, starNumber: 1),
        Star(dificultyLevel: dificultyLevel, starNumber: 2),
        Star(dificultyLevel: dificultyLevel, starNumber: 3),
        Star(dificultyLevel: dificultyLevel, starNumber: 4),
        Star(dificultyLevel: dificultyLevel, starNumber: 5),
      ],
    );
  }
}

class Star extends StatelessWidget {
  final int dificultyLevel;
  final int starNumber;

  const Star({
    Key? key,
    required this.dificultyLevel,
    required this.starNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var blue = Colors.blue;
    var lightBlue = Colors.blue[100];
    var validateDifficuty = dificultyLevel >= starNumber;

    return Icon(
      Icons.star,
      size: 15,
      color: (validateDifficuty) ? blue : lightBlue,
    );
  }
}
