import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/src/common_widgets/common_widgets.dart';
import '/src/constants/constants.dart';

import '../../../../routing/app_route.dart';

class HomeSuratKeluarSection extends StatelessWidget {
  const HomeSuratKeluarSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeApp.w24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Surat Keluar',
                style: TypographyTheme.title2.copyWith(
                  color: ColorApp.purpleLight // Color Primary,
                ),
              ),
              TextButton(
                onPressed: () {
                  context.pushNamed(Routes.suratKeluar.name);
                },
                child: Text(
                  'Semua >',
                  style: TypographyTheme.body.copyWith(
                    color: ColorApp.navyBlack,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: SizeApp.customHeight(95),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  if (index == 0) Gap.w24,
                  Padding(
                    padding: EdgeInsets.only(
                      right: SizeApp.w12,
                    ),
                    child: CardWidget.small(
                      suratCategory: 'Pemecatan',
                      onTap: () {},
                    ),
                  ),
                  if (index == 4) Gap.w24,
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
