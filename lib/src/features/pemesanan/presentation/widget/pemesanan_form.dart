import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moci_petcare/src/constants/data/list_data.dart';

import '/src/common_widgets/common_widgets.dart';
import '/src/constants/constants.dart';
import '/src/services/remote/config/config.dart';
import '../../domain/pemesanan.dart';
import '../../../../utils/extension/dynamic_extension.dart';
import '../../../../utils/extension/list_extension.dart';
import '../pemesanan_controller.dart';
import '../pemesanan_state.dart';

class PemesananFormWidget extends ConsumerStatefulWidget {
  final Pemesanan? pemesanan;
  const PemesananFormWidget({
    super.key,
    this.pemesanan,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PemesananFormWidgetState();
}

class _PemesananFormWidgetState extends ConsumerState<PemesananFormWidget> {
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
              context.replace("/pemesanan");
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
  void initState() {
    final controller = ref.read(pemesananControllerProvider.notifier);
    controller.init(widget.pemesanan);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.read(pemesananControllerProvider.notifier);
    final state = ref.watch(pemesananControllerProvider);
    _createPemesananListen(context, ref);

    return InputFormWidget(
      title: widget.pemesanan.isNull ? "Create" : "Edit",
      isLoading: state.isLoading,
      onSubmit: () => controller.fetchPemesanan(widget.pemesanan?.id),
      keyForm: controller.keyForm,
      children: [
        TextFieldWidget(
          controller: controller.namaHewanController,
          hintText: "Nama Hewan",
        ),
        TextFieldWidget(
          controller: controller.umurHewanController,
          hintText: "Umur Hewan",
        ),
        TextFieldDropdownWidget(
          controller: controller.jenisKelaminHewanController,
          hintText: 'Jenis Kelamin Hewan',
          dropdownItems: ListData.listJenisKelamin.dropdownItems(),
        ),
        TextFieldDropdownWidget(
          controller: controller.kategoriHewanController,
          hintText: 'Kategori Hewan',
          dropdownItems: ListData.ketegoriHewan.dropdownItems(),
        ),
        TextFieldWidget(
          controller: controller.noHPController,
          hintText: "No HP",
        ),
        TextFieldWeekWidget(
          controller: controller.tanggalController,
        ),
        Row(
          children: [
            Expanded(
              child: TextFieldDropdownWidget(
                controller: controller.jenisLayananController,
                hintText: "Jenis Layanan",
                dropdownItems: ListData.listJenisLayanan.dropdownItems(),
                onChanged: (v) {
                  controller.onChangeJenisLayanan(v);
                  setState(() {});
                },
              ),
            ),
            Gap.w12,
            Expanded(
              child: Consumer(
                builder: (context, ref, child) {
                  final state = ref.watch(jenisLayananState);

                  final list = (state == JenisLayanan.grooming
                      ? ListData.listJamGrooming
                      : ListData.listJamKesehatanKonsultasi);

                  if (controller.jamController.text == "") {
                    controller.jamController.text = list.first;
                  }

                  return TextFieldDropdownWidget(
                    controller: controller.jamController,
                    hintText: "Jam",
                    dropdownItems: list.dropdownItems(true),
                  );
                },
              ),
            ),
          ],
        ),
        if (controller.jenisLayananController.text != "grooming")
          TextFieldWidget(
            controller: controller.keluhanController,
            hintText: "Keluhan",
          ),
      ],
    );
  }
}
