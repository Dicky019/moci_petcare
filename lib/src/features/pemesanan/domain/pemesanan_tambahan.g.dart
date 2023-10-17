// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pemesanan_tambahan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PemesananTambahan _$$_PemesananTambahanFromJson(Map<String, dynamic> json) =>
    _$_PemesananTambahan(
      id: json['id'] as String,
      value: json['value'] as String,
      jenisLayanan: json['jenisLayanan'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_PemesananTambahanToJson(
        _$_PemesananTambahan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'jenisLayanan': instance.jenisLayanan,
      'runtimeType': instance.$type,
    };

_$_PemesananTambahanEmpty _$$_PemesananTambahanEmptyFromJson(
        Map<String, dynamic> json) =>
    _$_PemesananTambahanEmpty(
      id: json['id'] as String? ?? "-",
      value: json['value'] as String? ?? "-",
      jenisLayanan: json['jenisLayanan'] as String? ?? "-",
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_PemesananTambahanEmptyToJson(
        _$_PemesananTambahanEmpty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'jenisLayanan': instance.jenisLayanan,
      'runtimeType': instance.$type,
    };

_$_ListPemesananTambahan _$$_ListPemesananTambahanFromJson(
        Map<String, dynamic> json) =>
    _$_ListPemesananTambahan(
      listTambahanGrooming: (json['listTambahanGrooming'] as List<dynamic>)
          .map((e) => PemesananTambahan.fromJson(e as Map<String, dynamic>))
          .toList(),
      listTambahanKesehatan: (json['listTambahanKesehatan'] as List<dynamic>)
          .map((e) => PemesananTambahan.fromJson(e as Map<String, dynamic>))
          .toList(),
      listTambahanKonsultasi: (json['listTambahanKonsultasi'] as List<dynamic>)
          .map((e) => PemesananTambahan.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ListPemesananTambahanToJson(
        _$_ListPemesananTambahan instance) =>
    <String, dynamic>{
      'listTambahanGrooming': instance.listTambahanGrooming,
      'listTambahanKesehatan': instance.listTambahanKesehatan,
      'listTambahanKonsultasi': instance.listTambahanKonsultasi,
      'runtimeType': instance.$type,
    };

_$_ListPemesananTambahanEmpty _$$_ListPemesananTambahanEmptyFromJson(
        Map<String, dynamic> json) =>
    _$_ListPemesananTambahanEmpty(
      listTambahanGrooming: (json['listTambahanGrooming'] as List<dynamic>?)
              ?.map(
                  (e) => PemesananTambahan.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      listTambahanKesehatan: (json['listTambahanKesehatan'] as List<dynamic>?)
              ?.map(
                  (e) => PemesananTambahan.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      listTambahanKonsultasi: (json['listTambahanKonsultasi'] as List<dynamic>?)
              ?.map(
                  (e) => PemesananTambahan.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ListPemesananTambahanEmptyToJson(
        _$_ListPemesananTambahanEmpty instance) =>
    <String, dynamic>{
      'listTambahanGrooming': instance.listTambahanGrooming,
      'listTambahanKesehatan': instance.listTambahanKesehatan,
      'listTambahanKonsultasi': instance.listTambahanKonsultasi,
      'runtimeType': instance.$type,
    };
