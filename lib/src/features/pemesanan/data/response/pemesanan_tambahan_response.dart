// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pemesanan_tambahan_response.freezed.dart';
part 'pemesanan_tambahan_response.g.dart';

@freezed
class PemesananTambahanResponse with _$PemesananTambahanResponse {
  const factory PemesananTambahanResponse({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "createdAt") String? createdAt,
    @JsonKey(name: "updatedAt") String? updatedAt,
    @JsonKey(name: "jenisLayanan") String? jenisLayanan,
    @JsonKey(name: "value") String? value,
  }) = _PemesananTambahanResponse;

  factory PemesananTambahanResponse.fromJson(Map<String, dynamic> json) =>
      _$PemesananTambahanResponseFromJson(json);
}

@freezed
class ListPemesananTambahanResponse with _$ListPemesananTambahanResponse {
  const factory ListPemesananTambahanResponse({
    @JsonKey(name: "data", defaultValue: [])
    List<PemesananTambahanResponse>? list,
  }) = _ListPemesananTambahanResponse;

  factory ListPemesananTambahanResponse.fromJson(Map<String, dynamic> json) =>
      _$ListPemesananTambahanResponseFromJson(json);
}
