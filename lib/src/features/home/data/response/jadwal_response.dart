// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moci_petcare/src/features/home/data/response/data_response.dart';

part 'jadwal_response.freezed.dart';
part 'jadwal_response.g.dart';

@freezed
class JadwalResponse with _$JadwalResponse {

  const factory JadwalResponse({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "data") DataResponse? data,
  }) = _JadwalResponse;

  factory JadwalResponse.fromJson(Map<String, dynamic> json) =>
      _$JadwalResponseFromJson(json);
}
