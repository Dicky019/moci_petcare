import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moci_petcare/src/features/pemesanan/presentation/pemesanan_controller.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/constants.dart';

class PemesananScreen extends ConsumerWidget {
  const PemesananScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.read(pemesananControllerProvider.notifier);
    final state = ref.watch(pemesananControllerProvider);

    return Scaffold(
      backgroundColor: ColorApp.purpleLight,
      body: SafeArea(
        child: SingleChildScrollView(
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
              CardWidget.primary(
                child: InputFormWidget(
                  keyForm: controller.keyForm,
                  onSubmit: controller.fetchCreatePemesanan,
                  isLoading: state.isLoading,
                  title: 'Create',
                  children: [
                    TextFieldWidget(
                      textEditingController: controller.namaHewanController,
                      hintText: "Nama Hewan",
                    ),
                    TextFieldWidget(
                      textEditingController: controller.hariController,
                      hintText: "Umur Hewan",
                    ),
                    TextFieldWidget(
                      textEditingController:
                          controller.jenisKelaminHewanController,
                      hintText: "Jenis Kelamin Hewan",
                    ),
                    TextFieldWidget(
                      textEditingController: controller.kategoriHewanController,
                      hintText: "Kategori Hewan",
                    ),
                    TextFieldWidget(
                      textEditingController: controller.noHPController,
                      hintText: "No HP",
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFieldWidget(
                            textEditingController: controller.hariController,
                            hintText: "Hari",
                          ),
                        ),
                        Gap.w12,
                        Expanded(
                          child: TextFieldWidget(
                            textEditingController: controller.noHPController,
                            hintText: "Jam",
                          ),
                        ),
                      ],
                    ),
                    TextFieldWidget(
                      textEditingController: controller.jenisLayananController,
                      hintText: "Jenis Layanan",
                    ),
                    TextFieldWidget(
                      textEditingController: controller.jenisLayananController,
                      hintText: "Keluhan",
                    ),
                  ],
                ),
              ),
              Gap.h24,
            ],
          ),
        ),
      ),
    );
  }
}
