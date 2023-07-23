import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/src/constants/constants.dart';
import 'home_controller.dart';
import 'widget/home_layanan_widget.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final jadwalControllerProvider = ref.watch(homeControllerProvider);

    return Scaffold(
      backgroundColor: ColorApp.purpleLight,
      body: SafeArea(
        child: jadwalControllerProvider.when(
          data: (value) {
            final layananGrouming = value.data.layananGrouming;
            final layananKesehatan = value.data.layananKesehatan;
            final layananKonsultasi = value.data.layananKonsultasi;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap.h20,
                Center(
                  child: Text(
                    "Jadwal Layanan ",
                    style: TypographyTheme.title1.copyWith(
                      color: ColorApp.pureWhite,
                      fontWeight: FontWeight.w600, // Color Primary,
                    ),
                  ),
                ),
                Gap.h16,
                HomeLayananWidget(
                  title: "Grouming",
                  layanan: layananGrouming,
                ),
                const Divider(),
                HomeLayananWidget(
                  title: "Kesehatan",
                  layanan: layananKesehatan,
                ),
                const Divider(),
                HomeLayananWidget(
                  title: "Konsultasi ",
                  layanan: layananKonsultasi,
                ),
              ],
            );
          },
          error: (error, stackTrace) => const Text("Error"),
          loading: () => const Center(
            child: CircularProgressIndicator(color: ColorApp.offGrey),
          ),
        ),
      ),
    );
  }
}
