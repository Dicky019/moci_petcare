import 'package:flutter/material.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../constants/constants.dart';
import 'widget/profile_card_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.purpleLight,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap.h20,
            CardWidget.header(
              child: Center(
                child: Text(
                  "Profile",
                  style: TypographyTheme.title1.copyWith(
                    color: ColorApp.purpleDark,
                    fontWeight: FontWeight.w600, // Color Primary,
                  ),
                ),
              ),
            ),
            Gap.h16,
            const ProfileCardSection(),
          ],
        ),
      ),
    );
  }
}
