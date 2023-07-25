import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:week_day_picker/week_day_picker.dart';

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
                  onClick: () async {
                    final now = DateTime.now();
                    final firstDate =
                        DateTime(now.year, now.month, now.day);
                    final lastDate = DateTime(now.year, now.month + 1, now.day);
                    var selectedDay= await WeekDayPicker(
                      context: context,
                      initialDate: now,
                      firstDate: firstDate,
                      lastDate: lastDate,
                      locale: const Locale.fromSubtags(languageCode: 'id'),
                      selectableDayInWeek: [1, 2, 3, 4, 5],
                      selectableBitwiseOperator: BitwiseOperator.or,
                    ).show();
                    if (selectedDay != null) {
                      final result = DateFormat("EEEE, d MMMM").format(selectedDay);
                      controller.hariController.text = result;
                    }
                  },
                ),
              ),
              Gap.w12,
              Expanded(
                child: TextFieldWidget(
                  textEditingController: controller.jamController,
                  hintText: "Jam",
                  onClick: () async {
                    final selectedTime = await showTimePicker(
                      initialTime: TimeOfDay.now(),
                      context: context,
                    );
                     if (selectedTime != null) {
                      final result = "${selectedTime.hour}.${selectedTime.minute}" ;
                      controller.jamController.text = result;
                    }
                  },
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
