import 'package:flutter/material.dart';


class Continuer extends StatelessWidget {
  final VoidCallback? onPressed;

  const Continuer({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        foregroundColor: Colors.white, // buttonPrimaryText
        backgroundColor: Colors.black, // buttonPrimaryBackground
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      child: const Text('Continuer'),
    );
  }
}
