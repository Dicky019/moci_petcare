import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/src/services/remote/config/config.dart';
import '../../../services/remote/api/pemesanan_api.dart';
import 'request/pemesanan_request.dart';
import 'response/pemesanan_response.dart';

class PemesananRepository {
  final PemesananApi _pemesananApi;

  const PemesananRepository(
    this._pemesananApi,
  );

  Future<Result<PemesananResponse>> createPemesanan(
    PemesananRequest pemesananRequest,
  ) async {
    final result = await _pemesananApi.pemesanan(pemesananRequest);

    return result;
  }

  Future<Result<ListPemesananResponse>> getAllPemesanan() async {
    final result = await _pemesananApi.getAllPemesanan();

    return result;
  }
}

final pemesananRepositoryProvider = Provider<PemesananRepository>((ref) {
  final pemesananApi = ref.read(pemesananApiProvider);

  return PemesananRepository(pemesananApi);
});
