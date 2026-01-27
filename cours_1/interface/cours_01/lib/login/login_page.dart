import 'package:cours_01/widgets/continuer.dart';
import 'package:cours_01/widgets/continuerAvec.dart';
import 'package:cours_01/widgets/email.dart';
import 'package:cours_01/widgets/separateur.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login in or sign up',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical : 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Email(),

            const SizedBox(height: 24),

            Continuer(
              onPressed: () {
              //  debugPrint('Continuer pressed');
              },
            ),

            const SizedBox(height: 40),
            const Separateur(),
            const SizedBox(height: 40),

            ContinuerAvec(
              label: 'Apple',
              iconPath: 'assets/apple_logo.svg',
              onPressed: () {
               // debugPrint('Apple pressed');
              },
            ),

            const SizedBox(height: 16),
            
            ContinuerAvec(
              label: 'Facebook',
              iconPath: 'assets/facebook_logo.svg',
              onPressed: () {
               // debugPrint('Facebook pressed');
              },
            ),

            const SizedBox(height: 16),


            ContinuerAvec(
              label: 'Google',
              iconPath: 'assets/google_logo.svg',
              onPressed: () {
               // debugPrint('Google pressed');
              },
            ),

          ],
        ),
      ),
      ); // écran vide pour l’instant
  }
}
