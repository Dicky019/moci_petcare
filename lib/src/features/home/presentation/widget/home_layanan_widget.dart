import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/constants.dart';
import '../../domain/jadwal.dart';

class HomeLayananWidget extends StatelessWidget {
  final List<Layanan> layanan;
  final String title;
  const HomeLayananWidget(
      {super.key, required this.layanan, required this.title});

  @override
  Widget build(BuildContext context) {
    return CardWidget.header(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "Layanan $title",
              style: TypographyTheme.title2.copyWith(
                color: ColorApp.purpleDark,
                fontWeight: FontWeight.w600, // Color Primary,
              ),
            ),
          ),
          for (var i = 0; i < layanan.length; i++)
            ListTile(
              leading: CircleAvatar(
                backgroundColor: ColorApp.purpleDark,
                child: Text(
                  "${i + 1}",
                  style: TypographyTheme.body2.copyWith(
                    color: ColorApp.pureWhite,
                    fontWeight: FontWeight.w600, // Color Primary,
                  ),
                ),
              ),
              title: Text(
                layanan[i].hari.toUpperCase(),
                style: TypographyTheme.body2.copyWith(
                  color: ColorApp.purpleDark,
                  fontWeight: FontWeight.w600, // Color Primary,
                ),
              ),
              subtitle: Text(
                layanan[i].jam,
                style: const TextStyle(color: ColorApp.purpleLight),
              ),
            ),
        ],
      ),
    );
  }
}
