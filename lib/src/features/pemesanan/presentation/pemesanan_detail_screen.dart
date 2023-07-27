import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/constants.dart';
import '../../../routing/app_route.dart';
import 'widget/pemesanan_list.dart';

class PemesananDetailScreen extends ConsumerWidget {
  final String id;
  const PemesananDetailScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: ColorApp.pureWhite,
      appBar: AppBarWidget(
        title: "Pemesanan",
        onClick: () => context.go(Routes.pemesananHistory.path),
      ),
      body: const PemesananList(),
    );
  }
}
