import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moci_petcare/src/features/authentication/application/authentication_service.dart';
import 'package:moci_petcare/src/features/pemesanan/domain/pemesanan.dart';
import 'package:moci_petcare/src/utils/extension/dynamic_extension.dart';
import 'package:moci_petcare/src/utils/extension/list_extension.dart';

import '/src/common_widgets/common_widgets.dart';
import '/src/constants/constants.dart';
import '/src/services/remote/config/config.dart';
import '/src/utils/extension/build_context_extension.dart';

import '../pemesanan_controller.dart';
import '../pemesanan_state.dart';

class PemesananFormWidget extends ConsumerWidget {
  final Pemesanan? pemesanan;
  const PemesananFormWidget({Key? key, this.pemesanan}) : super(key: key);

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

  void _init(PemesananController controller, WidgetRef ref) {
    final authService = ref.read(authServiceProvider);

    controller.noHPController.text = authService.getCurrentUser()?.noHP ?? "";

    if (pemesanan.isNull) {
      return;
    }

    controller.namaHewanController.text = pemesanan!.namaHewan;
    controller.umurHewanController.text = pemesanan!.umurHewan;
    controller.jenisKelaminHewanController.text = pemesanan!.jenisKelaminHewan;
    controller.kategoriHewanController.text = pemesanan!.kategoriHewan;
    controller.jenisLayananController.text = pemesanan!.jenisLayanan;
    controller.hariController.text = pemesanan!.hari;
    controller.jamController.text = pemesanan!.jam;
    controller.keluhanController.text = pemesanan!.keluhan;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(pemesananControllerProvider.notifier);
    final state = ref.watch(pemesananControllerProvider);

    _createPemesananListen(context, ref);
    _init(controller, ref);

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: InputFormWidget(
              title: pemesanan.isNull ? "Create" : "Edit",
              isLoading: state.isLoading,
              onSubmit: pemesanan.isNull
                  ? controller.fetchCreatePemesanan
                  : () => controller.fetchEditPemesanan(pemesanan!.id),
              keyForm: controller.keyForm,
              children: [
                TextFieldWidget(
                  textEditingController: controller.namaHewanController,
                  hintText: "Nama Hewan",
                ),
                TextFieldWidget(
                  textEditingController: controller.umurHewanController,
                  hintText: "Umur Hewan",
                ),
                TextFieldDropdownWidget(
                  controller: controller.jenisKelaminHewanController,
                  hintText: 'Jenis Kelamin Hewan',
                  dropdownItems: controller.listJenisKelamin.dropdownItems(),
                ),
                TextFieldWidget(
                  textEditingController: controller.kategoriHewanController,
                  hintText: "Kategori Hewan",
                ),
                TextFieldWidget(
                  textEditingController: controller.noHPController,
                  hintText: "No HP",
                ),
                TextFieldDropdownWidget(
                  controller: controller.jenisLayananController,
                  hintText: "Jenis Layanan",
                  dropdownItems: controller.listJenisLayanan.dropdownItems(),
                  onChanged: controller.onChangeJenisLayanan,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFieldWeekWidget(
                        controller: controller.hariController,
                      ),
                    ),
                    Gap.w12,
                    Expanded(
                      child: TextFieldDropdownWidget(
                        controller: controller.jamController,
                        hintText: 'Jam',
                        dropdownItems: controller.getlist,
                      ),
                    ),
                  ],
                ),
                TextFieldWidget(
                  textEditingController: controller.keluhanController,
                  hintText: "Keluhan",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
