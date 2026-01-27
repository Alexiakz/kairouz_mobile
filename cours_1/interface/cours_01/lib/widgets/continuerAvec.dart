import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ContinuerAvec extends StatelessWidget {
  final String label;
  final String iconPath;
  final VoidCallback onPressed;

  const ContinuerAvec({
    super.key,
    required this.label,
    required this.iconPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 20,
            height: 20,
          ),
          const SizedBox(width: 8),
          Text('Continuer avec $label'),
        ],
      ),
    );
  }
}
