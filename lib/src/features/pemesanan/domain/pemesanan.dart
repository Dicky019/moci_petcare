import 'package:freezed_annotation/freezed_annotation.dart';

part 'pemesanan.freezed.dart';
part 'pemesanan.g.dart';

@freezed
class Pemesanan with _$Pemesanan {
  const Pemesanan._();
  factory Pemesanan({
    required String id,
    required String jenisLayanan,
    required String namaHewan,
    required String kategoriHewan,
    required String umurHewan,
    required String jenisKelaminHewan,
    required String keluhan,
    required String hasilKonsultasi,
    required String tanggal,
    required String jam,
    required String status,
  }) = _Pemesanan;

  factory Pemesanan.empty({
    @Default("-") String id,
    @Default("-") String jenisLayanan,
    @Default("-") String namaHewan,
    @Default("-") String kategoriHewan,
    @Default("-") String umurHewan,
    @Default("-") String jenisKelaminHewan,
    @Default("-") String keluhan,
    @Default("-") String hasilKonsultasi,
    @Default("-") String tanggal,
    @Default("-") String jam,
    @Default("-") String status,
  }) = _PemesananEmpty;

  factory Pemesanan.fromJson(Map<String, dynamic> json) =>
      _$PemesananFromJson(json);
}

@freezed
class ListPemesanan with _$ListPemesanan {
  const ListPemesanan._();
  factory ListPemesanan({required List<Pemesanan> values}) = _ListPemesanan;

  factory ListPemesanan.fromJson(Map<String, dynamic> json) =>
      _$ListPemesananFromJson(json);
}
