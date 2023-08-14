import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common_widgets/common_widgets.dart';
import '../domain/jadwal.dart';
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
    return Scaffold(
      appBar: const AppBarWidget(title: "Jadwal"),
      body: StateWidget<Jadwal>(
        stream: ref.watch(homeControllerProvider),
        data: (value) {
          final layananGrouming = value.data.layananGrouming;
          final layananKesehatan = value.data.layananKesehatan;
          final layananKonsultasi = value.data.layananKonsultasi;
          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(homeControllerProvider);
            },
            child: ListView(
              children: [
                Gap.h16,
                HomeLayananWidget(
                  title: "Grouming",
                  layanan: layananGrouming,
                ),
                Gap.h12,
                HomeLayananWidget(
                  title: "Kesehatan",
                  layanan: layananKesehatan,
                ),
                Gap.h12,
                HomeLayananWidget(
                  title: "Konsultasi ",
                  layanan: layananKonsultasi,
                ),
                Gap.h16,
              ],
            ),
          );
        },
      ),
    );
  }
}
