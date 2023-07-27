import 'package:flutter/material.dart';
import '/src/constants/constants.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, required this.title, this.onClick});

  final String title;
  final VoidCallback? onClick;

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
      leading: onClick != null
          ? IconButton(icon: const Icon(Icons.arrow_back), onPressed: onClick)
          : const SizedBox(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(SizeApp.h48);
}
