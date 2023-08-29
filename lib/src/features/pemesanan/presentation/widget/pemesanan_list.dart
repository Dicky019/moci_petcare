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
  const PemesananList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final futureList = ref.watch(pemesananListFutureProvider);

    return StateWidget<ListPemesanan>(
      stream: futureList,
      loadingColor: ColorApp.purpleDark,
      data: (listPemesanan) => RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(pemesananListFutureProvider);
        },
        child: listPemesanan.values.isEmpty
            ? ListView(
                children: [
                  Gap.h48,
                  Center(
                    child: Text(
                      "Belum Ada Pemesanan...",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  )
                ],
              )
            : ListPemesananWidget(listPemesanan: listPemesanan),
      ),
    );
  }
}

class ListPemesananWidget extends ConsumerWidget {
  const ListPemesananWidget({
    super.key,
    required this.listPemesanan,
  });

  final ListPemesanan listPemesanan;

  @override
  Widget build(context, ref) {
    void toDetailPage(String id) => context.go(Routes.pemesananDetailPath(id));
    void toEditPage(String id) => context.go(Routes.pemesananEditPath(id));
    final controller = ref.read(pemesananControllerProvider.notifier);

    return ListView.separated(
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
                      focusColor: Colors.transparent,
                      color: Colors.blueAccent,
                      icon: const Icon(LineIcons.editAlt),
                    ),
                    IconButton.filledTonal(
                      // onPressed: () => controller.deletePemesanan(id),
                      onPressed: () async {
                        final data = await showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Hapus'),
                            content: const Text('Apakah Anda Yakin?'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('TIDAK'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, id),
                                child: const Text(
                                  'YA',
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                              ),
                            ],
                          ),
                        );

                        if (data != null) {
                          controller.deletePemesanan(id);
                        }
                      },
                      focusColor: Colors.transparent,
                      color: Colors.redAccent,
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
    );
  }
}
