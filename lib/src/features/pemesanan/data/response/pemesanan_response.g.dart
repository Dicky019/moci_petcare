// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pemesanan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PemesananResponse _$$_PemesananResponseFromJson(Map<String, dynamic> json) =>
    _$_PemesananResponse(
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      userId: json['userId'] as String?,
      jenisLayanan: json['jenisLayanan'] as String?,
      namaHewan: json['namaHewan'] as String?,
      kategoriHewan: json['kategoriHewan'] as String?,
      umurHewan: json['umurHewan'] as String?,
      jenisKelaminHewan: json['jenisKelaminHewan'] as String?,
      keluhan: json['keluhan'] as String?,
      status: json['status'] as String?,
      hari: json['hari'] as String?,
      jam: json['jam'] as String?,
    );

Map<String, dynamic> _$$_PemesananResponseToJson(
        _$_PemesananResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'userId': instance.userId,
      'jenisLayanan': instance.jenisLayanan,
      'namaHewan': instance.namaHewan,
      'kategoriHewan': instance.kategoriHewan,
      'umurHewan': instance.umurHewan,
      'jenisKelaminHewan': instance.jenisKelaminHewan,
      'keluhan': instance.keluhan,
      'status': instance.status,
      'hari': instance.hari,
      'jam': instance.jam,
    };

_$_ListPemesananResponse _$$_ListPemesananResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListPemesananResponse(
      list: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => PemesananResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_ListPemesananResponseToJson(
        _$_ListPemesananResponse instance) =>
    <String, dynamic>{
      'data': instance.list,
    };
