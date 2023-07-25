import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/constants.dart';
import 'pemesanan_controller.dart';
import 'widget/pemesanan_form.dart';
// import 'widget/pemesanan_form.dart';

class PemesananScreen extends ConsumerWidget {
  const PemesananScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final listPemesanan = ref.watch(listPemesananControllerProvider);
    return Scaffold(
      backgroundColor: ColorApp.purpleLight,
      body: SafeArea(
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
            Expanded(
              child: listPemesanan.when(
                data: (data) {
                  return ListView.separated(
                    itemBuilder: (context, index) {
                      return CardWidget.header(
                        child: ListTile(
                          title: Text(data.list[index].hari),
                          subtitle: Text(data.list[index].jam),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: data.list.length,
                  );
                },
                error: (error, stackTrace) => const Text("error"),
                loading: () => const Text("loading"),
              ),
            ),

            // Gap.h24,
          ],
        ),
      ),
    );
  }
}
