import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import 'widget/profile_card_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              child: ProfileCardSection(),
            ),
          ],
        ),
      ),
    );
  }
}
