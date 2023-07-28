import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moci_petcare/src/features/pemesanan/data/request/pemesanan_request.dart';
import 'package:moci_petcare/src/features/pemesanan/data/response/pemesanan_response.dart';
import '/src/services/remote/config/config.dart';

class PemesananApi {
  final DioClient _dioClient;

  PemesananApi(this._dioClient);

  Future<Result<PemesananResponse>> createPemesanan(
      PemesananRequest pemesananRequest) async {
    try {
      final response = await _dioClient.post(
        Endpoint.pemesanan,
        data: pemesananRequest.toJson(),
      );
      return Result.success(PemesananResponse.fromJson(response['data']));
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  Future<Result<PemesananResponse>> editPemesanan(
      PemesananRequest pemesananRequest, String id) async {
    try {
      final response = await _dioClient.put(
        "${Endpoint.pemesanan}/$id",
        data: pemesananRequest,
      );
      return Result.success(PemesananResponse.fromJson(response['data']));
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  Future<Result<PemesananResponse>> deletePemesanan(String id) async {
    try {
      final response = await _dioClient.delete(
        "${Endpoint.pemesanan}/$id",
      );
      return Result.success(PemesananResponse.fromJson(response['data']));
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  Future<Result<ListPemesananResponse>> getAllPemesanan() async {
    try {
      final response = await _dioClient.get(
        Endpoint.pemesanan,
      );
      log(response.toString());
      return Result.success(ListPemesananResponse.fromJson(response));
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  Future<Result<PemesananResponse>> getPemesanan(String id) async {
    try {
      final response = await _dioClient.get(
        "${Endpoint.pemesanan}/$id",
      );
      return Result.success(PemesananResponse.fromJson(response['data']));
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }
}

final pemesananApiProvider = Provider<PemesananApi>((ref) {
  return PemesananApi(ref.read(dioClientProvider));
});
