import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../domain/user.dart';
import '../../../services/remote/api/jadwal_api.dart';
import '/src/services/remote/config/config.dart';
import 'response/jadwal_response.dart';

class JadwalRepository {
  final JadwalApi _jadwalApi;
  // final HiveService _hiveService;

  JadwalRepository(
    this._jadwalApi,
  );

  Future<Result<JadwalResponse>> jadwal() async {
    return await _jadwalApi.jadwal();
  }
}

final jadwalRepositoryProvider = Provider<JadwalRepository>((ref) {
  final jadwalApi = ref.read(jadwalApiProvider);

  return JadwalRepository(jadwalApi);
});
