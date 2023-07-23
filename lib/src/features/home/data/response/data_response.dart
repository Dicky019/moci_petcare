// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moci_petcare/src/features/home/data/response/layanan_response.dart';

part 'data_response.freezed.dart';
part 'data_response.g.dart';

@freezed
class DataResponse with _$DataResponse {

  const factory DataResponse({
    @JsonKey(name: "layananGrouming") List<LayananResponse>? layananGrouming,
    @JsonKey(name: "layananKesehatan") List<LayananResponse>? layananKesehatan,
    @JsonKey(name: "layananKonsultasi") List<LayananResponse>? layananKonsultasi,
  }) = _DataResponse;

  factory DataResponse.fromJson(Map<String, dynamic> json) =>
      _$DataResponseFromJson(json);
}
