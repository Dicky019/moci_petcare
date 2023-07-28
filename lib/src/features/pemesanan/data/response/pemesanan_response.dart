// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pemesanan_response.freezed.dart';
part 'pemesanan_response.g.dart';

@freezed
class PemesananResponse with _$PemesananResponse {
  const factory PemesananResponse({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "createdAt") String? createdAt,
    @JsonKey(name: "updatedAt") String? updatedAt,
    @JsonKey(name: "userId") String? userId,
    @JsonKey(name: "jenisLayanan") String? jenisLayanan,
    @JsonKey(name: "namaHewan") String? namaHewan,
    @JsonKey(name: "kategoriHewan") String? kategoriHewan,
    @JsonKey(name: "umurHewan") String? umurHewan,
    @JsonKey(name: "jenisKelaminHewan") String? jenisKelaminHewan,
    @JsonKey(name: "keluhan") String? keluhan,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "tanggal") String? tanggal,
    @JsonKey(name: "jam") String? jam,
  }) = _PemesananResponse;

  factory PemesananResponse.fromJson(Map<String, dynamic> json) =>
      _$PemesananResponseFromJson(json);
}

@freezed
class ListPemesananResponse with _$ListPemesananResponse {
  const factory ListPemesananResponse({
    @JsonKey(name: "data", defaultValue: []) List<PemesananResponse>? list,
  }) = _ListPemesananResponse;

  factory ListPemesananResponse.fromJson(Map<String, dynamic> json) =>
      _$ListPemesananResponseFromJson(json);
}
