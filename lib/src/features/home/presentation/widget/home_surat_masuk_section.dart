import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/src/common_widgets/common_widgets.dart';
import '/src/constants/constants.dart';
import '/src/routing/app_route.dart';

class HomeSuratMasukSection extends StatelessWidget {
  const HomeSuratMasukSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeApp.w24,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Surat Masuk',
                  style: TypographyTheme.title2.copyWith(
                    color: ColorApp.purpleLight,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context.pushNamed(Routes.suratMasuk.name);
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
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: SizeApp.h12,
                    ),
                    child: CardWidget.primary(
                      suratName: 'Surat 01',
                      suratCategory: 'surat',
                      suratDate: '13 juni 2022',
                      onTap: () {},
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
