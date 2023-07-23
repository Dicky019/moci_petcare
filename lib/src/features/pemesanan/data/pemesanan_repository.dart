import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/src/services/remote/api/auth_api.dart';
import '/src/services/remote/config/config.dart';

class PemesananRepository {
  final AuthApi _authApi;

  PemesananRepository(
    this._authApi,
  );

  Future<Result<String>> createPemesanan() async {
    final result = await _authApi.login();

    return result;
  }
}

final pemesananRepositoryProvider = Provider<PemesananRepository>((ref) {
  final authApi = ref.read(authApiProvider);

  return PemesananRepository(authApi);
});
