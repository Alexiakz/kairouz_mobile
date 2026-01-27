import 'package:flutter/material.dart';

class NutriScoreWidget extends StatelessWidget {
  final String nutriScore;

  const NutriScoreWidget({super.key, required this.nutriScore});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100, 
      child: Image.network(
        'https://static.openfoodfacts.org/images/misc/nutriscore-$nutriScore.svg',
        fit: BoxFit.contain,
      ),
    );
  }
}
