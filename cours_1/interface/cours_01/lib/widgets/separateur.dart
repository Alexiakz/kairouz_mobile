import 'package:flutter/material.dart';

class Separateur extends StatelessWidget {
  const Separateur({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center (
    child : Text(
      'Ou',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 14,
      ),
    ),
    );
  }
}
