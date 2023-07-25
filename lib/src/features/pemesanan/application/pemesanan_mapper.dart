import '../data/response/pemesanan_response.dart';
import '/src/services/remote/config/config.dart';

import '../../../utils/extension/string_extension.dart';
import '../domain/pemesanan.dart';

class PemesananMapper {
  PemesananMapper._();

  static Result<Pemesanan> mapToPemesanan(Result<PemesananResponse> response) {
    return response.when(
      success: (data) {
        return Result.success(
          Pemesanan(
            id: data.id.toEmpty,
            hari: data.hari.toEmpty,
            jam: data.jam.toEmpty,
            jenisKelaminHewan: data.jenisKelaminHewan.toEmpty,
            jenisLayanan: data.jenisLayanan.toEmpty,
            kategoriHewan: data.kategoriHewan.toEmpty,
            keluhan: data.keluhan.toEmpty,
            namaHewan: data.namaHewan.toEmpty,
            status: data.status.toEmpty,
            umurHewan: data.umurHewan.toEmpty,
          ),
        );
      },
      failure: (error, stacktrace) {
        return Result.failure(error, stacktrace);
      },
    );
  }

  static Result<ListPemesanan> mapToListPemesanan(
      Result<ListPemesananResponse> response) {
    return response.when(
      success: (data) {
        final list = data.list
            .map(
              (e) => Pemesanan(
                id: e.id.toEmpty,
                jenisLayanan: e.jenisLayanan.toEmpty,
                namaHewan: e.namaHewan.toEmpty,
                kategoriHewan: e.kategoriHewan.toEmpty,
                umurHewan: e.umurHewan.toEmpty,
                jenisKelaminHewan: e.jenisKelaminHewan.toEmpty,
                keluhan: e.keluhan.toEmpty,
                hari: e.hari.toEmpty,
                jam: e.jam.toEmpty,
                status: e.status.toEmpty,
              ),
            )
            .toList();
        return Result.success(
          ListPemesanan(list: list),
        );
      },
      failure: (error, stacktrace) {
        return Result.failure(error, stacktrace);
      },
    );
  }

  // static PemesananRequest mapToPemesananResponse(
  //   Pemesanan pemesanan,
  // ) {
  //   return PemesananRequest(
  //     hari: pemesanan.hari.toEmpty,
  //     status: pemesanan.status.toEmpty,
  //     noHP: pemesanan.noHP.toEmpty,
  //     jam: pemesanan.jam.toEmpty,
  //     jenisKelaminHewan: pemesanan.jenisKelaminHewan.toEmpty,
  //     jenisLayanan: pemesanan.jenisLayanan.toEmpty,
  //     kategoriHewan: pemesanan.kategoriHewan.toEmpty,
  //     keluhan: pemesanan.keluhan.toEmpty,
  //     namaHewan: pemesanan.namaHewan.toEmpty,
  //     umurHewan: pemesanan.umurHewan.toEmpty,
  //   );
  // }
}
