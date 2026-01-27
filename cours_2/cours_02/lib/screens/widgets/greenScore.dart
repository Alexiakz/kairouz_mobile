import 'package:flutter/material.dart';

class GreenScoreWidget extends StatelessWidget {
  final String greenScore;

  const GreenScoreWidget({super.key, required this.greenScore});

  String get description {
    switch (greenScore) {
      case "A+":
        return "Très faible impact environnemental";
      case "B":
        return "Faible impact environnemental";
      case "C":
        return "Impact modéré sur l'environnement";
      case "D":
        return "Impact environnemental élevé";
      case "E":
      case "F":
        return "Impact environnemental très élevé";
      default:
        return "Inconnu";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('GreenScore: $greenScore', style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(description, textAlign: TextAlign.center),
      ],
    );
  }
}
