// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pemesanan_tambahan_request.freezed.dart';
part 'pemesanan_tambahan_request.g.dart';

@freezed
class PemesananTambahanRequest with _$PemesananTambahanRequest {
  const factory PemesananTambahanRequest({
    required String tambahanPemesanan,
  }) = _PemesananTambahanRequest;

  factory PemesananTambahanRequest.fromJson(Map<String, dynamic> json) =>
      _$PemesananTambahanRequestFromJson(json);
}
