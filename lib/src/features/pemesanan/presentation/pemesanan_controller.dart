import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moci_petcare/src/features/pemesanan/presentation/pemesanan_state.dart';

import '../application/pemesanan_service.dart';

class PemesananControllerNotifier extends StateNotifier<PemesananState> {
  PemesananControllerNotifier(this._pemesananService)
      : super(const PemesananState());

  final PemesananService _pemesananService;

  final jenisLayananController = TextEditingController();
  final namaHewanController = TextEditingController();
  final kategoriHewanController = TextEditingController();
  final umurHewanController = TextEditingController();
  final jenisKelaminHewanController = TextEditingController();
  final keluhanController = TextEditingController();
  final noHPController = TextEditingController();
  final hariController = TextEditingController();
  final jamController = TextEditingController();
      final GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  String get namaHewan => namaHewanController.text;
  String get kategoriHewan => kategoriHewanController.text;
  String get jenisKelaminHewan => jenisKelaminHewanController.text;
  String get umurHewan => umurHewanController.text;
  String get noHP => noHPController.text;
  String get hari => hariController.text;
  String get jam => jamController.text;
  String get jenisLayanan => jenisLayananController.text;
  String get keluhan => keluhanController.text;

  void fetchCreatePemesanan() async {
    state = state.copyWith(value: const AsyncLoading());

    final result = await _pemesananService.createPemesanan();

    result.when(
      success: (data) {
        state = state.copyWith(
          value: const AsyncData(true),
        );
      },
      failure: (error, stackTrace) {
        state = state.copyWith(
          value: AsyncValue.error(error, stackTrace),
        );
      },
    );

    state = state.copyWith(
      value: const AsyncData(null),
    );
  }
}

final pemesananControllerProvider = StateNotifierProvider.autoDispose<
    PemesananControllerNotifier, PemesananState>(
  (ref) {
    return PemesananControllerNotifier(
      ref.read(pemesananServiceProvider),
    );
  },
);


  // "jenisLayanan": "kesehatan",
  // "namaHewan": "dasdasdasd312313",
  // "kategoriHewan": "dasdsadsad2312312",
  // "umurHewan": "sadlkadaksd3123123",
  // "jenisKelaminHewan": "jantan",
  // "keluhan": "dasdasdad",
  // "noHP": "",
  // "hari" : "senin",
  // "pilihJamGrouming": "jam09_12",
  // "pilihJamKesehatanKonsultasi": "jam09_10"
  // "status": "pending",