// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataResponse _$$_DataResponseFromJson(Map<String, dynamic> json) =>
    _$_DataResponse(
      layananGrouming: (json['layananGrouming'] as List<dynamic>?)
          ?.map((e) => LayananResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      layananKesehatan: (json['layananKesehatan'] as List<dynamic>?)
          ?.map((e) => LayananResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      layananKonsultasi: (json['layananKonsultasi'] as List<dynamic>?)
          ?.map((e) => LayananResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataResponseToJson(_$_DataResponse instance) =>
    <String, dynamic>{
      'layananGrouming': instance.layananGrouming,
      'layananKesehatan': instance.layananKesehatan,
      'layananKonsultasi': instance.layananKonsultasi,
    };
