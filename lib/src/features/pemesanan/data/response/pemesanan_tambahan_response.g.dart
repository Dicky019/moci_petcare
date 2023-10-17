// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pemesanan_tambahan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PemesananTambahanResponse _$$_PemesananTambahanResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PemesananTambahanResponse(
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      jenisLayanan: json['jenisLayanan'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_PemesananTambahanResponseToJson(
        _$_PemesananTambahanResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'jenisLayanan': instance.jenisLayanan,
      'value': instance.value,
    };

_$_ListPemesananTambahanResponse _$$_ListPemesananTambahanResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListPemesananTambahanResponse(
      list: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  PemesananTambahanResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_ListPemesananTambahanResponseToJson(
        _$_ListPemesananTambahanResponse instance) =>
    <String, dynamic>{
      'data': instance.list,
    };
