import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moci_petcare/src/features/home/presentation/profile_controller.dart';
import '/src/common_widgets/button/button_widget.dart';
import '/src/common_widgets/modal_bottom_sheet/modal_bottom_sheet_widget.dart';
import '/src/constants/constants.dart';
import '/src/features/home/presentation/widget/home_card_section.dart';
import '/src/features/home/presentation/widget/home_header_section.dart';
import '/src/features/home/presentation/widget/home_surat_keluar_section.dart';
import '/src/features/home/presentation/widget/home_surat_masuk_section.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: SizeApp.customHeight(200),
            decoration: BoxDecoration(
              color: ColorApp.purpleLight, // Color Primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.all(
          //     SizeApp.w24,
          //   ),
          //   child:
          SafeArea(
            child: Column(
              children: [
                Gap.h16,
                Consumer(
                  builder: (context, ref, child) {
                    final user = ref.read(profileControllerProvider).getUser;
                    return Text(user?.email ?? "kosong");
                  },
                ),
                const HomeHeaderSection(),
                Gap.h28,
                const HomeCardSection(),
                const HomeSuratKeluarSection(),
                const HomeSuratMasukSection()
              ],
              // ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeApp.w24,
        ),
        child: ButtonWidget(
          text: 'Buat surat',
          onTap: () {
            ModalBottomSheetHelper.showModalBottomSheetHelper(context);
          },
        ),
      ),
    );
  }
}
