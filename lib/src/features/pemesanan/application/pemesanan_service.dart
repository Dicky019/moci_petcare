import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/src/services/remote/config/config.dart';
import '../data/request/pemesanan_request.dart';
import '../data/response/pemesanan_response.dart';
import '../data/pemesanan_repository.dart';
import '../domain/pemesanan.dart';
import 'pemesanan_mapper.dart';

class PemesananService {
  final PemesananRepository pemesananRepository;

  PemesananService(this.pemesananRepository);

  Future<Result<PemesananResponse>> createPemesanan(
    PemesananRequest pemesananRequest,
  ) async {
    final result = await pemesananRepository.createPemesanan(pemesananRequest);

    return result;
  }

  Future<Result<ListPemesanan>> getAllPemesanan() async {
    final response = await pemesananRepository.getAllPemesanan();
    final result = PemesananMapper.mapToListPemesanan(response);
    return result;
  }
}

final pemesananServiceProvider = Provider<PemesananService>((ref) {
  final pemesananRepository = ref.read(pemesananRepositoryProvider);
  return PemesananService(pemesananRepository);
});
