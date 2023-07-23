import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moci_petcare/src/features/home/domain/jadwal.dart';

import '../data/jadwal_repository.dart';
import 'jadwal_mapper.dart';

class JadwalService {
  final JadwalRepository jadwalRepository;

  JadwalService(this.jadwalRepository);

  Future<Jadwal> jadwal() async {
    final responseJadwal = await jadwalRepository.jadwal();
    final resultJadwal = JadwalMapper.mapToJadwal(responseJadwal);

    const dataNull = Jadwal(
      data: Data(
        layananGrouming: [],
        layananKesehatan: [],
        layananKonsultasi: [],
      ),
    );

    return resultJadwal.whenOrNull(
          success: (data) => data,
        ) ??
        dataNull;
  }
}

final jadwalServiceProvider = Provider<JadwalService>((ref) {
  final jadwalRepository = ref.read(jadwalRepositoryProvider);
  return JadwalService(jadwalRepository);
});
