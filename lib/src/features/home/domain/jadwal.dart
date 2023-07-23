import 'package:freezed_annotation/freezed_annotation.dart';

part 'jadwal.freezed.dart';
part 'jadwal.g.dart';

@freezed
class Jadwal with _$Jadwal {
  const factory Jadwal({
    required Data data,
  }) = _Jadwal;

  factory Jadwal.fromJson(Map<String, dynamic> json) => _$JadwalFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required List<Layanan> layananGrouming,
    required List<Layanan> layananKesehatan,
    required List<Layanan> layananKonsultasi,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Layanan with _$Layanan {
  const factory Layanan({
    required String jam,
    required String hari,
    required String jenisLayanan,
  }) = _Layanan;

  factory Layanan.fromJson(Map<String, dynamic> json) => _$LayananFromJson(json);
}
