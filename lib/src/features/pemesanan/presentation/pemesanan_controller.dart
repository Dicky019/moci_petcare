import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moci_petcare/src/features/pemesanan/domain/pemesanan_tambahan.dart';

import '../../authentication/application/authentication_service.dart';
import '../../../utils/extension/dynamic_extension.dart';
import '../data/request/pemesanan_request.dart';
import '../application/pemesanan_service.dart';
import '../domain/pemesanan.dart';
import 'pemesanan_state.dart';

class PemesananController extends StateNotifier<PemesananState> {
  PemesananController(this._pemesananService, this._ref)
      : super(const PemesananState());

  final PemesananService _pemesananService;
  final StateNotifierProviderRef<PemesananController, PemesananState> _ref;
  // final

  void invalidateList() {
    final state = _ref.refresh(pemesananListFutureProvider);
    state.mapOrNull(
      data: (data) => log(data.value.values.toString(), name: "mapOrNull"),
    );
    // _ref.refresh(pemesananControllerProvider);
  }

  void invalidateListT() {
    final state = _ref.refresh(pemesananTambahanListFutureProvider);
    state.mapOrNull(
      data: (data) => log(data.value.toString(), name: "mapOrNull"),
    );
    // _ref.refresh(pemesananTambahanListFutureProvider);
  }

  void invalidateDetail(String id) {
    final state = _ref.refresh(pemesananDetailFutureProvider(id));
    state.mapOrNull(
      data: (data) => log(data.value.toString(), name: "mapOrNull"),
    );
    invalidateList();
    invalidateListT();
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

  void onChangeJenisLayanan(String? value) {
    if (value.isNull) {
      return;
    }
    final jenisLayanan =
        JenisLayanan.values.firstWhere((element) => element.name == value);

    jamController.text = "";

    log(jenisLayanan.name, name: "onChangeJenisLayanan");

    _ref.read(jenisLayananState.notifier).update((state) => jenisLayanan);
  }

  void deletePemesanan(String id) async {
    final result = await _pemesananService.deletePemesanan(id);

    result.when(
      success: (data) {
        invalidateList();
      },
      failure: (error, stackTrace) {
        invalidateList();
        log(error.toString());
      },
    );
  }

  void setPemesanan(
    BuildContext context,
    // PemesananTambahanRequest request,
    List<PemesananTambahan> pemesanan,
    String id,
  ) async {
    // log(request.tambahanPemesanan);
    // final listData = request.tambahanPemesanan.split(", ").toList();

    final result = await _pemesananService.setPemesananTambahan(pemesanan, id);

    result.when(
      success: (data) {
        invalidateDetail(id);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.greenAccent,
            content: Text("Berhasil Tambahan Pemesanan"),
            showCloseIcon: true,
          ),
        );
      },
      failure: (error, stackTrace) {
        invalidateDetail(id);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text("Ada Yang Salah"),
            showCloseIcon: true,
          ),
        );
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
      success: (data) async {
        await _ref.read(authServiceProvider).getAndSaveLogin();
        state = state.copyWith(
          value: const AsyncData(true),
        );
        invalidateList();
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

  void init(Pemesanan? pemesanan) {
    if (pemesanan == null) {
      return;
    }

    namaHewanController.text = pemesanan.namaHewan;
    umurHewanController.text = pemesanan.umurHewan;
    jenisKelaminHewanController.text = pemesanan.jenisKelaminHewan;
    kategoriHewanController.text = pemesanan.kategoriHewan;
    jenisLayananController.text = pemesanan.jenisLayanan;
    tanggalController.text = pemesanan.tanggal;
    jamController.text = pemesanan.jam;
    keluhanController.text = pemesanan.keluhan;
  }
}

final pemesananTambahanProvider = StateProvider((_) => <PemesananTambahan>{});

final jenisLayananState = StateProvider.autoDispose<JenisLayanan>((ref) {
  const jenisLayananMap = {
    "kesehatan": JenisLayanan.kesehatan,
    "grooming": JenisLayanan.grooming,
    "konsultasi": JenisLayanan.konsultasi,
  };

  final jenisLayanan =
      ref.read(pemesananControllerProvider.notifier).jenisLayanan;

  return jenisLayananMap[jenisLayanan] ?? JenisLayanan.grooming;
});

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

final pemesananTambahanListFutureProvider =
    FutureProvider<ListPemesananTambahan>(
  (ref) async {
    final data =
        await ref.read(pemesananServiceProvider).getPemesananTambahan();
    return data.when(
      success: (data) => data,
      failure: (error, stackTrace) {
        return ListPemesananTambahan.empty();
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
