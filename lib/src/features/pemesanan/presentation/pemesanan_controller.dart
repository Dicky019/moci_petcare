import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moci_petcare/src/features/pemesanan/data/request/pemesanan_request.dart';
import 'package:moci_petcare/src/features/pemesanan/domain/pemesanan.dart';
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
    final pemesananRequest = PemesananRequest(
      jenisLayanan: jenisLayanan,
      namaHewan: namaHewan,
      kategoriHewan: kategoriHewan,
      umurHewan: umurHewan,
      jenisKelaminHewan: jenisKelaminHewan,
      keluhan: keluhan,
      noHP: noHP,
      hari: hari,
      jam: jam,
    );

    final result = await _pemesananService.createPemesanan(pemesananRequest);

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

final listPemesananControllerProvider =
    FutureProvider.autoDispose<ListPemesanan>(
  (ref) async {
    final data = await ref.read(pemesananServiceProvider).getAllPemesanan();
    return data.when(
      success: (data) => data,
      failure: (error, stackTrace) {
        return ListPemesanan(list: []);
      },
    );
  },
);
