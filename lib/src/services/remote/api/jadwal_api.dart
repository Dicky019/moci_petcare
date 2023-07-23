import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../features/home/data/response/jadwal_response.dart';
import '/src/services/remote/config/config.dart';

class JadwalApi {
  final DioClient _dioClient;

  JadwalApi(this._dioClient);

  Future<Result<JadwalResponse>> jadwal() async {
    try {
      final response = await _dioClient.get(
        Endpoint.jadwal,
      );
      log((response['data'] as Map).toString(), name: "_dioClient");
      return Result.success(JadwalResponse.fromJson(response));
      // return Result.success(response['code']);
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }
}

final jadwalApiProvider = Provider<JadwalApi>((ref) {
  return JadwalApi(ref.read(dioClientProvider));
});
