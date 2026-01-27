import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formation_flutter/l10n/app_localizations.dart';
import 'package:formation_flutter/res/app_colors.dart';
import 'package:formation_flutter/res/app_icons.dart';
import 'package:formation_flutter/res/app_vectorial_images.dart';
import 'widgets/product_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.my_scans_screen_title),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsetsDirectional.only(end: 8.0),
              child: Icon(AppIcons.barcode),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🔹 Product Header
            ProductHeader(
              imageUrl:
                  'https://images.openfoodfacts.org/images/products/301/762/042/9484/front_fr.4.400.jpg',
              productName: 'Nutella',
              brand: 'Ferrero',
            ),

            // 🔹 Contenu principal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Column(
                children: [
                  SvgPicture.asset(AppVectorialImages.illEmpty),
                  const SizedBox(height: 20),
                  const Text(
                    'Vous n\'avez pas encore scanné de produit',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.blue,
                      backgroundColor: AppColors.yellow,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(22.0)),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(localizations.my_scans_screen_button.toUpperCase()),
                        const SizedBox(width: 4.0),
                        const Icon(Icons.arrow_right_alt_rounded),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
