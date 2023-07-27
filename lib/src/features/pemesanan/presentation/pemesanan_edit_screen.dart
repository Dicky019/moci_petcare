import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:moci_petcare/src/routing/app_route.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/constants.dart';
import '../domain/pemesanan.dart';
import 'pemesanan_controller.dart';
import 'widget/pemesanan_form.dart';

class PemesananEditScreen extends ConsumerWidget {
  final String id;
  const PemesananEditScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: ColorApp.pureWhite,
      appBar: AppBarWidget(
        title: "Edit Pemesanan",
        onClick: () => context.go(Routes.pemesananHistory.path),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap.h16,
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: StateWidget<Pemesanan>(
                loadingColor: ColorApp.purpleDark,
                stream: ref.watch(pemesananDetailFutureProvider(id)),
                data: (pemesanan) => PemesananFormWidget(pemesanan: pemesanan),
              ),
            ),
          ),
          Gap.h36,
        ],
      ),
    );
  }
}
