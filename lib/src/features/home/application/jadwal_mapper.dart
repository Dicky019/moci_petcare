import '../data/response/layanan_response.dart';
import '../domain/jadwal.dart';

import '../data/response/jadwal_response.dart';
import '/src/services/remote/config/config.dart';
import '../../../utils/extension/string_extension.dart';

class JadwalMapper {
  JadwalMapper._();

  static Result<Jadwal> mapToJadwal(Result<JadwalResponse> response) {
    return response.when(
      success: (value) {
        final layananGrouming = (value.data?.layananGrouming ?? []);
        final layananKesehatan = (value.data?.layananKesehatan ?? []);
        final layananKonsultasi = (value.data?.layananKonsultasi ?? []);

        final data = Data(
          layananGrouming: listLayananResponseToLayanan(layananGrouming),
          layananKesehatan: listLayananResponseToLayanan(layananKesehatan),
          layananKonsultasi: listLayananResponseToLayanan(layananKonsultasi),
        );

        return Result.success(
          Jadwal(data: data),
        );
      },
      failure: (error, stacktrace) {
        return Result.failure(error, stacktrace);
      },
    );
  }

  static List<Layanan> listLayananResponseToLayanan(
          List<LayananResponse> list) =>
      list
          .map(
            (e) => Layanan(
              jam: e.jam.toEmpty,
              hari: e.hari.toEmpty,
              jenisLayanan: e.jenisLayanan.toEmpty,
            ),
          )
          .toList();
}
