import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/constants.dart';
import 'widget/pemesanan_form.dart';

class PemesananScreen extends ConsumerWidget {
  const PemesananScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: ColorApp.purpleLight,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap.h20,
              CardWidget.header(
                child: Center(
                  child: Text(
                    "Pemesanan",
                    style: TypographyTheme.title1.copyWith(
                      color: ColorApp.purpleDark,
                      fontWeight: FontWeight.w600, // Color Primary,
                    ),
                  ),
                ),
              ),
              Gap.h16,
              const PemesananFormWidget(),
              Gap.h24,
            ],
          ),
        ),
      ),
    );
  }
}
