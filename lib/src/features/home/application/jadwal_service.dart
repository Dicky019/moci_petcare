import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moci_petcare/src/features/home/domain/jadwal.dart';
import 'package:moci_petcare/src/services/remote/config/config.dart';

import '../data/jadwal_repository.dart';
import 'jadwal_mapper.dart';

class JadwalService {
  final JadwalRepository jadwalRepository;

  JadwalService(this.jadwalRepository);

  Future<Result<Jadwal>> jadwal() async {
    final responseJadwal = await jadwalRepository.jadwal();
    final resultJadwal = JadwalMapper.mapToJadwal(responseJadwal);
    return resultJadwal;
  }
}

final jadwalServiceProvider = Provider<JadwalService>((ref) {
  final jadwalRepository = ref.read(jadwalRepositoryProvider);
  return JadwalService(jadwalRepository);
});
