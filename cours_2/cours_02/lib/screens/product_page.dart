import 'package:flutter/material.dart';

// tes widgets déjà créés
import './widgets/product_header.dart';
import './widgets/nutriScore.dart';
import './widgets/nova.dart';
import './widgets/greenScore.dart';
import './widgets/productData.dart';
import './widgets/separator.dart';

/// Bandeau NutriScore / Nova / GreenScore utilisant les widgets existants
class ScoreBanner extends StatelessWidget {
  final String nutriScore;
  final int novaGroup;
  final String greenScore;

  const ScoreBanner({
    super.key,
    required this.nutriScore,
    required this.novaGroup,
    required this.greenScore,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // NutriScore 44%
        Flexible(flex: 44, child: NutriScoreWidget(nutriScore: nutriScore)),

        // Séparateur vertical
        const Separator(axis: Axis.vertical, thickness: 1, color: Colors.black26),

        // Nova 56%
        Flexible(flex: 56, child: NovaWidget(novaGroup: novaGroup)),

        const SizedBox(width: 8),

        // GreenScore
        GreenScoreWidget(greenScore: greenScore),
      ],
    );
  }
}

/// Page produit complète
class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🔹 Header avec image + nom + marque
            const ProductHeader(
              imageUrl: 'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?q=80&w=1310&auto=format&fit=crop',
              productName: 'Nutella',
              brand: 'Ferrero',
            ),

            const SizedBox(height: 16),

            // 🔹 Bandeau NutriScore / Nova / GreenScore
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: ScoreBanner(nutriScore: 'A', novaGroup: 4, greenScore: 'B'),
            ),

            const SizedBox(height: 8),

            // 🔹 Données Quantité & Vendu utilisant ProductData
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductData(label: 'Quantité', value: '500 g'),
                  ProductData(label: 'Vendu', value: 'Oui'),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // 🔹 Boutons Végétalien & Végétarien
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text('Végétalien')),
                  ElevatedButton(onPressed: () {}, child: const Text('Végétarien')),
                ],
              ),
            ),

            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
