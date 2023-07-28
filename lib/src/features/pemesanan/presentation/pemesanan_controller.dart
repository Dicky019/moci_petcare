import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../authentication/application/authentication_service.dart';
import '../../../utils/extension/dynamic_extension.dart';
import '../../../utils/extension/list_extension.dart';
import '../data/request/pemesanan_request.dart';
import '../application/pemesanan_service.dart';
import '../domain/pemesanan.dart';
import 'pemesanan_state.dart';

class PemesananController extends StateNotifier<PemesananState> {
  PemesananController(this._pemesananService, this._ref)
      : super(const PemesananState());

  final PemesananService _pemesananService;
  final StateNotifierProviderRef<PemesananController, PemesananState> _ref;

  void invalidateList() async {
    _ref.invalidate(pemesananListFutureProvider);
    _ref.invalidate(pemesananControllerProvider);
  }

  final jenisLayananController = TextEditingController();
  final namaHewanController = TextEditingController();
  final kategoriHewanController = TextEditingController();
  final umurHewanController = TextEditingController();
  final jenisKelaminHewanController = TextEditingController();
  final keluhanController = TextEditingController();
  final noHPController = TextEditingController();
  final tanggalController = TextEditingController();
  final jamController = TextEditingController();
  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  String get namaHewan => namaHewanController.text;
  String get kategoriHewan => kategoriHewanController.text;
  String get jenisKelaminHewan => jenisKelaminHewanController.text;
  String get umurHewan => umurHewanController.text;
  String get noHP => noHPController.text;
  String get tanggal => tanggalController.text;
  String get jam => jamController.text;
  String get jenisLayanan => jenisLayananController.text;
  String get keluhan => keluhanController.text;

  final listJamKesehatanKonsultasi = [
    "jam09_10",
    "jam10_11",
    "jam12_13",
    "jam13_14",
    "jam14_15",
    "jam15_16",
    "jam16_17",
    "jam17_18",
    "jam18_19",
    "jam19_20",
    "jam20_21",
  ];
  final listJamGrooming = ["jam09_12", "jam10_14", "jam14_17", "jam16_19"];

  final listJenisLayanan = ["grooming", "kesehatan", "konsultasi"];
  final listJenisKelamin = ["jantan", "betina"];

  List<DropdownMenuItem<String>> get getlistJamByJenisLayanan {
    final list = (state.jenisLayanan == JenisLayanan.grooming
        ? listJamGrooming
        : listJamKesehatanKonsultasi);
    return list.dropdownItems(true);
  }

  void onChangeJenisLayanan(String? value) {
    if (value.isNull) {
      return;
    }
    final jenisLayanan =
        JenisLayanan.values.firstWhere((element) => element.name == value);

    state = state.copyWith(jenisLayanan: jenisLayanan);
  }

  void deletePemesanan(String id) async {
    final result = await _pemesananService.deletePemesanan(id);

    result.when(
      success: (data) {
        invalidateList();
      },
      failure: (error, stackTrace) {
        // invalidateList();
        log(error.toString());
      },
    );
  }

  void fetchPemesanan(String? id) async {
    state = state.copyWith(value: const AsyncLoading());
    final pemesananRequest = PemesananRequest(
      jenisLayanan: jenisLayanan,
      namaHewan: namaHewan,
      kategoriHewan: kategoriHewan,
      umurHewan: umurHewan,
      jenisKelaminHewan: jenisKelaminHewan,
      keluhan: keluhan,
      noHP: noHP,
      tanggal: tanggal,
      jam: jam,
    );

    final result = id.isNull
        ? await _pemesananService.createPemesanan(pemesananRequest)
        : await _pemesananService.editPemesanan(pemesananRequest, id!);

    result.when(
      success: (data) {
        state = state.copyWith(
          value: const AsyncData(true),
        );
        // invalidateList();
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

final pemesananControllerProvider =
    StateNotifierProvider.autoDispose<PemesananController, PemesananState>(
  (ref) {
    final pemesananController = PemesananController(
      ref.read(pemesananServiceProvider),
      ref,
    );

    pemesananController.noHPController.text =
        ref.read(authServiceProvider).getCurrentUser()?.noHP ?? "-";

    return pemesananController;
  },
);

final pemesananListFutureProvider = FutureProvider<ListPemesanan>(
  (ref) async {
    final data = await ref.read(pemesananServiceProvider).getAllPemesanan();
    return data.when(
      success: (data) => data,
      failure: (error, stackTrace) {
        return ListPemesanan(values: []);
      },
    );
  },
);

final pemesananDetailFutureProvider =
    FutureProvider.autoDispose.family<Pemesanan, String>(
  (ref, id) async {
    final data = await ref.read(pemesananServiceProvider).getPemesanan(id);
    return data.when(
      success: (data) => data,
      failure: (error, stackTrace) {
        log(error.toString());
        return Pemesanan.empty(
          id: id,
        );
      },
    );
  },
);
