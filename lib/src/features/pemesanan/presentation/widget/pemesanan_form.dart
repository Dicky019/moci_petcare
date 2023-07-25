import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/src/common_widgets/common_widgets.dart';
import '/src/constants/constants.dart';
import '/src/services/remote/config/config.dart';
import '/src/utils/extension/build_context_extension.dart';

import '../pemesanan_controller.dart';
import '../pemesanan_state.dart';

class PemesananFormWidget extends ConsumerWidget {
  const PemesananFormWidget({Key? key}) : super(key: key);

  void _createPemesananListen(
    BuildContext context,
    WidgetRef ref,
  ) {
    ref.listen<PemesananState>(
      pemesananControllerProvider,
      (_, state) {
        state.value.whenOrNull(
          data: (data) {
            if (data != null) {
              context.goToHomeScreen(ref);
            }
          },
          error: (error, stackTrace) {
            final message = NetworkExceptions.getErrorMessage(
              error as NetworkExceptions,
            );
            log(message);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(pemesananControllerProvider.notifier);
    final state = ref.watch(pemesananControllerProvider);

    _createPemesananListen(context, ref);

    return CardWidget.primary(
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
            textEditingController: controller.jenisKelaminHewanController,
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
    );
  }
}
