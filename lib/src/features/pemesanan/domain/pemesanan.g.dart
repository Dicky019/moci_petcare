// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pemesanan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pemesanan _$$_PemesananFromJson(Map<String, dynamic> json) => _$_Pemesanan(
      id: json['id'] as String,
      jenisLayanan: json['jenisLayanan'] as String,
      namaHewan: json['namaHewan'] as String,
      kategoriHewan: json['kategoriHewan'] as String,
      umurHewan: json['umurHewan'] as String,
      jenisKelaminHewan: json['jenisKelaminHewan'] as String,
      keluhan: json['keluhan'] as String,
      hari: json['hari'] as String,
      jam: json['jam'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_PemesananToJson(_$_Pemesanan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jenisLayanan': instance.jenisLayanan,
      'namaHewan': instance.namaHewan,
      'kategoriHewan': instance.kategoriHewan,
      'umurHewan': instance.umurHewan,
      'jenisKelaminHewan': instance.jenisKelaminHewan,
      'keluhan': instance.keluhan,
      'hari': instance.hari,
      'jam': instance.jam,
      'status': instance.status,
    };

_$_ListPemesanan _$$_ListPemesananFromJson(Map<String, dynamic> json) =>
    _$_ListPemesanan(
      list: (json['list'] as List<dynamic>)
          .map((e) => Pemesanan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListPemesananToJson(_$_ListPemesanan instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
