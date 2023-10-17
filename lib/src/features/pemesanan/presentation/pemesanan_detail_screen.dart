import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moci_petcare/src/features/pemesanan/domain/pemesanan_tambahan.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/constants.dart';
import '../../../routing/app_route.dart';
import '../domain/pemesanan.dart';
import 'widget/pemesanan_detail.dart';
import 'pemesanan_controller.dart';

class PemesananDetailScreen extends ConsumerWidget {
  final String id;
  const PemesananDetailScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: ColorApp.pureWhite,
      appBar: AppBarWidget(
        title: "Detail Pemesanan",
        onClick: () => context.go(Routes.pemesananHistory.path),
      ),
      body: StateWidget<Pemesanan>(
        stream: ref.watch(pemesananDetailFutureProvider(id)),
        data: (pemesanan) => StateWidget<ListPemesananTambahan>(
          stream: ref.watch(pemesananTambahanListFutureProvider),
          data: (listTambahan) => PemesananDetailWidget(
            pemesanan: pemesanan,
            listTambahanKesehatan: listTambahan.listTambahanKesehatan,
            listTambahanGrooming: listTambahan.listTambahanGrooming,
            listTambahanKonsultasi: listTambahan.listTambahanKonsultasi,
          ),
        ),
      ),
    );
  }
}
