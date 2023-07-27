import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
    required this.number,
    required this.title,
    required this.subtitle,
    this.onTap,
    this.trailing,
  });

  final String number;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        backgroundColor: ColorApp.purpleDark,
        child: Text(
          number,
          style: TypographyTheme.body2.copyWith(
            color: ColorApp.pureWhite,
            fontWeight: FontWeight.w600, // Color Primary,
          ),
        ),
      ),
      title: Text(
        title.toUpperCase(),
        style: TypographyTheme.body2.copyWith(
          color: ColorApp.purpleDark,
          fontWeight: FontWeight.w600, // Color Primary,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: ColorApp.purpleLight),
      ),
      trailing: trailing,
    );
  }
}
