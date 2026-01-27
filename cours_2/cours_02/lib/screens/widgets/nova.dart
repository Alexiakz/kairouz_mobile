import 'package:flutter/material.dart';

class NovaWidget extends StatelessWidget {
  final int novaGroup; // 1 2 3 4

  const NovaWidget({super.key, required this.novaGroup});

  String get description {
    switch (novaGroup) {
      case 1:
        return "Aliments non transformés ou transformés minimalement";
      case 2:
        return "Ingrédients culinaires transformés";
      case 3:
        return "Aliments transformés";
      case 4:
        return "Produits alimentaires et boissons ultra-transformés";
      default:
        return "Inconnu";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text('Groupe Nova $novaGroup', style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(description, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
