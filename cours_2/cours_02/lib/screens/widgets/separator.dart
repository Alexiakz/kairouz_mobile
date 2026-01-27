import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  final Axis axis;
  final double thickness;
  final Color color;

  const Separator({
    super.key,
    this.axis = Axis.horizontal,
    this.thickness = 1,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return axis == Axis.horizontal
        ? Divider(thickness: thickness, color: color)
        : VerticalDivider(thickness: thickness, color: color);
  }
}
