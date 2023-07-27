import 'package:flutter/material.dart';

import '../../../common_widgets/common_widgets.dart';
import 'widget/profile_card_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: "Profile"),
      body: Center(child: ProfileCardSection()),
    );
  }
}
