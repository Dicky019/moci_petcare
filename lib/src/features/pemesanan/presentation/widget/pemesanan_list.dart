import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:moci_petcare/src/routing/app_route.dart';

import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/constants.dart';
import '../../domain/pemesanan.dart';
import '../pemesanan_controller.dart';

class PemesananList extends ConsumerWidget {
  const PemesananList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StateWidget<ListPemesanan>(
      stream: ref.watch(pemesananListFutureProvider),
      loadingColor: ColorApp.purpleDark,
      data: (listPemesanan) => ListView.separated(
        itemBuilder: (context, index) {
          final data = listPemesanan.values[index];

          final number = "${index + 1}";
          final jam = data.jam;
          final hari = data.hari;
          final jenisLayanan = data.jenisLayanan;
          final status = data.status;

          final title = "$status / $jenisLayanan";
          final subtitle = '${hari.toUpperCase()}, $jam';
          final id = data.id;
          return Column(
            children: [
              if (index == 0) Gap.h8,
              ListTileWidget(
                number: number,
                title: title,
                subtitle: subtitle,
                trailing: IconButton.filledTonal(
                  onPressed: () => context.go(Routes.pemesananEditPath(id)),
                  icon: const Icon(LineIcons.editAlt),
                ),
                onTap: () {
                  context.go(Routes.pemesananDetail.path);
                },
              ),
              if (index == listPemesanan.values.length - 1) Gap.h16,
            ],
          );
        },
        separatorBuilder: (context, index) => const Divider(
          color: ColorApp.purpleBlue,
        ),
        itemCount: listPemesanan.values.length,
      ),
    );
  }
}
