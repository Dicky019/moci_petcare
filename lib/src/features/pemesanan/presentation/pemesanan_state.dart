import 'package:flutter_riverpod/flutter_riverpod.dart';

enum JenisLayanan { grooming, kesehatan, konsultasi }

class PemesananState {
  final AsyncValue<bool?> value;
  // final JenisLayanan jenisLayanan;

  const PemesananState({
    this.value = const AsyncData(null),
    // this.jenisLayanan = JenisLayanan.grooming,
  });

  PemesananState copyWith({
    AsyncValue<bool?>? value,
    // JenisLayanan? jenisLayanan,
  }) {
    return PemesananState(
      value: value ?? this.value,
      // jenisLayanan: jenisLayanan ?? this.jenisLayanan,
    );
  }

  bool get isLoading => value.isLoading;
}
