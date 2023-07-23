import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/pemesanan_repository.dart';
import '/src/services/remote/config/config.dart';

class PemesananService {
  final PemesananRepository authRepository;

  PemesananService(this.authRepository);

  Future<Result<void>> createPemesanan() async {
    final resultLogin = await authRepository.createPemesanan();

    return resultLogin;
  }
}

final pemesananServiceProvider = Provider<PemesananService>((ref) {
  final pemesananRepository = ref.read(pemesananRepositoryProvider);
  return PemesananService(pemesananRepository);
});
