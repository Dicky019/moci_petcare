import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/src/constants/constants.dart';

class HomeCardSection extends StatelessWidget {
  const HomeCardSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        SizeApp.w16,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: SizeApp.w24,
      ),
      decoration: BoxDecoration(
        color: ColorApp.pureWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(12.r),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Keluar',
                    style: TypographyTheme.title2.copyWith(
                      color: ColorApp.purpleLight,
                    ),
                  ),
                  Text(
                    '20 surat',
                    style: TypographyTheme.body,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mail_outline_outlined,
                  color: ColorApp.purpleLight,
                ),
              )
            ],
          ),
          Gap.h12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Masuk',
                    style: TypographyTheme.title2.copyWith(
                      color: ColorApp.purpleLight,
                    ),
                  ),
                  Text(
                    '20 surat',
                    style: TypographyTheme.body,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mail_outline_outlined,
                  color: ColorApp.purpleLight,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
