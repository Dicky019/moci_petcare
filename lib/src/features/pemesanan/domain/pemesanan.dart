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
    required String hari,
    required String jam,
    required String status,
  }) = _Pemesanan;

  factory Pemesanan.fromJson(Map<String, dynamic> json) =>
      _$PemesananFromJson(json);
}

@freezed
class ListPemesanan with _$ListPemesanan {
  const ListPemesanan._();
  factory ListPemesanan({required List<Pemesanan> list}) = _ListPemesanan;
  // factory ListPemesanan.empty({@Default([]) List<Pemesanan> list}) = _ListPemesananEmpty;

  factory ListPemesanan.fromJson(Map<String, dynamic> json) =>
      _$ListPemesananFromJson(json);
}
