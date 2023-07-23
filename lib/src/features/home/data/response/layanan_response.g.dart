// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layanan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LayananResponse _$$_LayananResponseFromJson(Map<String, dynamic> json) =>
    _$_LayananResponse(
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      hari: json['hari'] as String?,
      jam: json['jam'] as String?,
      jenisLayanan: json['jenisLayanan'] as String?,
    );

Map<String, dynamic> _$$_LayananResponseToJson(_$_LayananResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'hari': instance.hari,
      'jam': instance.jam,
      'jenisLayanan': instance.jenisLayanan,
    };
