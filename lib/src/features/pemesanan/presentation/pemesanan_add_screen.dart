import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:moci_petcare/src/routing/app_route.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/constants.dart';
import 'widget/pemesanan_form.dart';

class PemesananAddScreen extends ConsumerWidget {
  const PemesananAddScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: ColorApp.pureWhite,
      appBar: AppBarWidget(
        title: "Add Pemesanan",
        onClick: () => context.go(Routes.pemesananHistory.path),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap.h16,
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child:  const PemesananFormWidget(),
            ),
          ),
          Gap.h36,
        ],
      ),
    );
  }
}
