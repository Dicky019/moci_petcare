// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jadwal_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JadwalResponse _$$_JadwalResponseFromJson(Map<String, dynamic> json) =>
    _$_JadwalResponse(
      code: json['code'] as String?,
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : DataResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JadwalResponseToJson(_$_JadwalResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };
