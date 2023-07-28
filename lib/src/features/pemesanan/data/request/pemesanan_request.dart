// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pemesanan_request.freezed.dart';
part 'pemesanan_request.g.dart';

@freezed
class PemesananRequest with _$PemesananRequest {
  const factory PemesananRequest({
    required String jenisLayanan,
    required String namaHewan,
    required String kategoriHewan,
    required String umurHewan,
    required String jenisKelaminHewan,
    required String keluhan,
    required String noHP,
    @Default("pending") String status,
    required String tanggal,
    required String jam,
  }) = _PemesananRequest;

  factory PemesananRequest.fromJson(Map<String, dynamic> json) =>
      _$PemesananRequestFromJson(json);
}
