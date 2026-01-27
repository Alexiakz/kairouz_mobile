import 'package:flutter/material.dart';
import 'separator.dart';

class ProductData extends StatelessWidget {
  final String label;
  final String? value;
  final bool showSeparator;

  const ProductData({
    super.key,
    required this.label,
    this.value,
    this.showSeparator = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(label)),
        value != null ? Text(value!) : const SizedBox.shrink(),
        if (showSeparator) const Separator(),
      ],
    );
  }
}
