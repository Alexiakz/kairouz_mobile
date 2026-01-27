import 'package:cours_01/widgets/continuer.dart';
import 'package:cours_01/widgets/continuerAvec.dart';
import 'package:cours_01/widgets/email.dart';
import 'package:cours_01/widgets/separateur.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';

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
          vertical: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Email(
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),

            const SizedBox(height: 24),

            Continuer(
              onPressed: _email.isNotEmpty
                  ? () {}
                  : null, 
            ),

            const SizedBox(height: 40),
            const Separateur(),
            const SizedBox(height: 40),

            ContinuerAvec(
              label: 'Apple',
              iconPath: 'assets/apple_logo.svg',
              onPressed: () {},
            ),

            const SizedBox(height: 16),

            ContinuerAvec(
              label: 'Facebook',
              iconPath: 'assets/facebook_logo.svg',
              onPressed: () {},
            ),

            const SizedBox(height: 16),

            ContinuerAvec(
              label: 'Google',
              iconPath: 'assets/google_logo.svg',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
