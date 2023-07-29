import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:moci_petcare/src/routing/app_route.dart';

import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/constants.dart';
import '../../domain/pemesanan.dart';
import '../pemesanan_controller.dart';

class PemesananList extends ConsumerWidget {
  const PemesananList({ super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void toDetailPage(String id) => context.go(Routes.pemesananDetailPath(id));
    void toEditPage(String id) => context.go(Routes.pemesananEditPath(id));
    final futureList = ref.watch(pemesananListFutureProvider);
    final controller = ref.read(pemesananControllerProvider.notifier);

    return StateWidget<ListPemesanan>(
      stream: futureList,
      loadingColor: ColorApp.purpleDark,
      data: (listPemesanan) => ListView.separated(
        itemBuilder: (context, index) {
          final data = listPemesanan.values[index];

          final jam = data.jam;
          final tanggal = data.tanggal;
          final jenisLayanan = data.jenisLayanan;
          final status = data.status;

          final title = "$status / $jenisLayanan";
          final subtitle = '${tanggal.toUpperCase()}\nJam $jam';
          final id = data.id;
          return Column(
            children: [
              if (index == 0) Gap.h8,
              ListTileWidget(
                // number: number,
                title: title,
                subtitle: subtitle,
                trailing: SizedBox(
                  width: 100.w,
                  child: Row(
                    children: [
                      IconButton.filled(
                        onPressed: () => toEditPage(id),
                        icon: const Icon(LineIcons.editAlt),
                      ),
                      IconButton.filledTonal(
                        onPressed: () => controller.deletePemesanan(id) ,
                        icon: const Icon(LineIcons.trash),
                      ),
                    ],
                  ),
                ),
                onTap: () => toDetailPage(id),
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
