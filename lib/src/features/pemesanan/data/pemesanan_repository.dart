import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moci_petcare/src/features/pemesanan/data/response/pemesanan_tambahan_response.dart';

import '/src/services/remote/config/config.dart';
import '../../../services/remote/api/pemesanan_api.dart';
import 'request/pemesanan_request.dart';
import 'request/pemesanan_tambahan_request.dart';
import 'response/pemesanan_response.dart';

class PemesananRepository {
  final PemesananApi _pemesananApi;

  const PemesananRepository(
    this._pemesananApi,
  );

  Future<Result<PemesananResponse>> createPemesanan(
    PemesananRequest pemesananRequest,
  ) async {
    final result = await _pemesananApi.createPemesanan(pemesananRequest);

    return result;
  }

  Future<Result<PemesananResponse>> editPemesanan(
    PemesananRequest pemesananRequest,
    String id,
  ) async {
    final result = await _pemesananApi.editPemesanan(pemesananRequest, id);

    return result;
  }

  Future<Result<PemesananResponse>> setPemesananTambahan(
    PemesananTambahanRequest pemesananRequest,
    String id,
  ) async {
    final result =
        await _pemesananApi.setPemesananTambahan(pemesananRequest, id);

    return result;
  }

  Future<Result<ListPemesananTambahanResponse>> getPemesananTambahan() async {
    final result = await _pemesananApi.getPemesananTambahan();

    return result;
  }

  Future<Result<PemesananResponse>> deletePemesanan(
    String id,
  ) async {
    final result = await _pemesananApi.deletePemesanan(id);

    return result;
  }

  Future<Result<ListPemesananResponse>> getAllPemesanan() async {
    final result = await _pemesananApi.getAllPemesanan();

    return result;
  }

  Future<Result<PemesananResponse>> getPemesanan(String id) async {
    final result = await _pemesananApi.getPemesanan(id);

    return result;
  }
}

final pemesananRepositoryProvider = Provider<PemesananRepository>((ref) {
  final pemesananApi = ref.read(pemesananApiProvider);

  return PemesananRepository(pemesananApi);
});
