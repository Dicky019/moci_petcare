import 'package:freezed_annotation/freezed_annotation.dart';

part 'pemesanan_tambahan.freezed.dart';
part 'pemesanan_tambahan.g.dart';

@freezed
class PemesananTambahan with _$PemesananTambahan {
  const PemesananTambahan._();
  factory PemesananTambahan({
    required String id,
    required String value,
    required String jenisLayanan,
  }) = _PemesananTambahan;

  const factory PemesananTambahan.empty({
    @Default("-") String id,
    @Default("-") String value,
    @Default("-") String jenisLayanan,
  }) = _PemesananTambahanEmpty;

  factory PemesananTambahan.fromJson(Map<String, dynamic> json) =>
      _$PemesananTambahanFromJson(json);
}

@freezed
class ListPemesananTambahan with _$ListPemesananTambahan {
  const ListPemesananTambahan._();
 const factory ListPemesananTambahan({
    required List<PemesananTambahan> listTambahanGrooming,
    required List<PemesananTambahan> listTambahanKesehatan,
    required List<PemesananTambahan> listTambahanKonsultasi,
  }) = _ListPemesananTambahan;

 const factory ListPemesananTambahan.empty({
    @Default([]) List<PemesananTambahan> listTambahanGrooming,
    @Default([]) List<PemesananTambahan> listTambahanKesehatan,
    @Default([]) List<PemesananTambahan> listTambahanKonsultasi,
  }) = _ListPemesananTambahanEmpty;

  factory ListPemesananTambahan.fromJson(Map<String, dynamic> json) =>
      _$ListPemesananTambahanFromJson(json);
}
