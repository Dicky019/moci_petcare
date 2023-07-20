import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/src/constants/constants.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorApp.purpleDark,
      centerTitle: true,
      title: Text(
        title,
        style: TypographyTheme.title2.copyWith(
          color: ColorApp.pureWhite,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(SizeApp.h48);
}
