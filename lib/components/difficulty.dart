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
        // Star(dificultyLevel: dificultyLevel, starNumber: 1),
        // Star(dificultyLevel: dificultyLevel, starNumber: 2),
        // Star(dificultyLevel: dificultyLevel, starNumber: 3),
        // Star(dificultyLevel: dificultyLevel, starNumber: 4),
        // Star(dificultyLevel: dificultyLevel, starNumber: 5),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 1) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 2) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 3) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 4) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 5) ? Colors.blue : Colors.blue[100],
        ),
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
    return Icon(
      Icons.star,
      size: 15,
      color: (dificultyLevel >= starNumber) ? Colors.blue : Colors.blue[100],
    );
  }
}
