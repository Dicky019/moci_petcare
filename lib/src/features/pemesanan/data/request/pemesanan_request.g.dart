// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pemesanan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PemesananRequest _$$_PemesananRequestFromJson(Map<String, dynamic> json) =>
    _$_PemesananRequest(
      jenisLayanan: json['jenisLayanan'] as String,
      namaHewan: json['namaHewan'] as String,
      kategoriHewan: json['kategoriHewan'] as String,
      umurHewan: json['umurHewan'] as String,
      jenisKelaminHewan: json['jenisKelaminHewan'] as String,
      keluhan: json['keluhan'] as String,
      noHP: json['noHP'] as String,
      status: json['status'] as String? ?? "pending",
      tanggal: json['tanggal'] as String,
      jam: json['jam'] as String,
    );

Map<String, dynamic> _$$_PemesananRequestToJson(_$_PemesananRequest instance) =>
    <String, dynamic>{
      'jenisLayanan': instance.jenisLayanan,
      'namaHewan': instance.namaHewan,
      'kategoriHewan': instance.kategoriHewan,
      'umurHewan': instance.umurHewan,
      'jenisKelaminHewan': instance.jenisKelaminHewan,
      'keluhan': instance.keluhan,
      'noHP': instance.noHP,
      'status': instance.status,
      'tanggal': instance.tanggal,
      'jam': instance.jam,
    };
