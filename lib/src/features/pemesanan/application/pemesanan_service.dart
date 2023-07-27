import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/src/services/remote/config/config.dart';
import '../data/request/pemesanan_request.dart';
import '../data/pemesanan_repository.dart';
import '../domain/pemesanan.dart';
import 'pemesanan_mapper.dart';

class PemesananService {
  final PemesananRepository pemesananRepository;

  PemesananService(this.pemesananRepository);

  Future<Result<Pemesanan>> createPemesanan(
    PemesananRequest pemesananRequest,
  ) async {
    final response = await pemesananRepository.createPemesanan(
      pemesananRequest,
    );
    final result = PemesananMapper.mapToPemesanan(response);
    return result;
  }

  Future<Result<Pemesanan>> editPemesanan(
    PemesananRequest pemesananRequest,
    String id,
  ) async {
    final response = await pemesananRepository.editPemesanan(
      pemesananRequest,
      id,
    );
    final result = PemesananMapper.mapToPemesanan(response);
    return result;
  }

  Future<Result<ListPemesanan>> getAllPemesanan() async {
    final response = await pemesananRepository.getAllPemesanan();
    final result = PemesananMapper.mapToListPemesanan(response);
    return result;
  }

  Future<Result<Pemesanan>> getPemesanan(String id) async {
    final response = await pemesananRepository.getPemesanan(id);
    final result = PemesananMapper.mapToPemesanan(response);
    return result;
  }
}

final pemesananServiceProvider = Provider<PemesananService>((ref) {
  final pemesananRepository = ref.read(pemesananRepositoryProvider);
  return PemesananService(pemesananRepository);
});
