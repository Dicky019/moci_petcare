// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'layanan_response.freezed.dart';
part 'layanan_response.g.dart';

@freezed
class LayananResponse with _$LayananResponse {
  const factory LayananResponse({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "createdAt") String? createdAt,
    @JsonKey(name: "updatedAt") String? updatedAt,
    @JsonKey(name: "hari") String? hari,
    @JsonKey(name: "jam") String? jam,
    @JsonKey(name: "jenisLayanan") String? jenisLayanan,
  }) = _LayananResponse;

  factory LayananResponse.fromJson(Map<String, dynamic> json) =>
      _$LayananResponseFromJson(json);
}

