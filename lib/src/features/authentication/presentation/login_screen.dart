import 'package:flutter/material.dart';
import '/src/features/authentication/presentation/widget/login_card_section.dart';
import '../../../constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: ColorApp.purpleLight // Color Primary,
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: LoginCardSection(),
            ),
          ],
        ),
      ),
    );
  }
}
