import 'package:cours_01/res/colors.dart';
import 'package:flutter/material.dart';

class Separateur extends StatelessWidget {
  const Separateur({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: Divider()),
        SizedBox(width: 10),
        Text(
          'Ou',
          style: TextStyle(
          color: AppColors.textSecondary,
          fontSize: 14,
          ),
        ),
        SizedBox(width: 10),
        Expanded(child: Divider()),
      ],
    );
  }
}
