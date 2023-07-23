// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jadwal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Jadwal _$$_JadwalFromJson(Map<String, dynamic> json) => _$_Jadwal(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JadwalToJson(_$_Jadwal instance) => <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      layananGrouming: (json['layananGrouming'] as List<dynamic>)
          .map((e) => Layanan.fromJson(e as Map<String, dynamic>))
          .toList(),
      layananKesehatan: (json['layananKesehatan'] as List<dynamic>)
          .map((e) => Layanan.fromJson(e as Map<String, dynamic>))
          .toList(),
      layananKonsultasi: (json['layananKonsultasi'] as List<dynamic>)
          .map((e) => Layanan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'layananGrouming': instance.layananGrouming,
      'layananKesehatan': instance.layananKesehatan,
      'layananKonsultasi': instance.layananKonsultasi,
    };

_$_Layanan _$$_LayananFromJson(Map<String, dynamic> json) => _$_Layanan(
      jam: json['jam'] as String,
      hari: json['hari'] as String,
      jenisLayanan: json['jenisLayanan'] as String,
    );

Map<String, dynamic> _$$_LayananToJson(_$_Layanan instance) =>
    <String, dynamic>{
      'jam': instance.jam,
      'hari': instance.hari,
      'jenisLayanan': instance.jenisLayanan,
    };
