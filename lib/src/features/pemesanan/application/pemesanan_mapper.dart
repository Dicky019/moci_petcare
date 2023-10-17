import '../data/response/pemesanan_tambahan_response.dart';
import '../data/response/pemesanan_response.dart';
import '../domain/pemesanan_tambahan.dart';
import '/src/services/remote/config/config.dart';

import '../../../utils/extension/string_extension.dart';
import '../domain/pemesanan.dart';

class PemesananMapper {
  PemesananMapper._();

  static Result<PemesananTambahan> mapToPemesananTambahan(
    Result<PemesananTambahanResponse> response,
  ) {
    return response.when(
      success: (data) {
        return Result.success(
          PemesananTambahan(
            id: data.id.toEmpty,
            value: data.value.toEmpty,
            jenisLayanan: data.jenisLayanan.toEmpty,
          ),
        );
      },
      failure: (error, stacktrace) {
        return Result.failure(error, stacktrace);
      },
    );
  }

  static Result<ListPemesananTambahan> mapToListPemesananTambahan(
    Result<ListPemesananTambahanResponse> response,
  ) {
    return response.when(
      success: (data) {
        final list = (data.list ?? [])
            .map(
              (e) => PemesananTambahan(
                id: e.id.toEmpty,
                jenisLayanan: e.jenisLayanan.toEmpty,
                value: e.value.toEmpty,
              ),
            )
            .toList();

        List<String> getList(String jenisLayanan) => list
            .takeWhile((value) => value.jenisLayanan == jenisLayanan)
            .map((e) => e.value)
            .toList();

        return Result.success(
          ListPemesananTambahan(
            listTambahanGrooming: getList("Grooming"),
            listTambahanKesehatan: getList("Kesehatan"),
            listTambahanKonsultasi: getList("Konsultasi"),
          ),
        );
      },
      failure: (error, stacktrace) {
        return Result.failure(error, stacktrace);
      },
    );
  }

  static Result<Pemesanan> mapToPemesanan(Result<PemesananResponse> response) {
    return response.when(
      success: (data) {
        return Result.success(
          Pemesanan(
            id: data.id.toEmpty,
            tanggal: data.tanggal.toEmpty,
            jam: data.jam.toEmpty,
            jenisKelaminHewan: data.jenisKelaminHewan.toEmpty,
            jenisLayanan: data.jenisLayanan.toEmpty,
            kategoriHewan: data.kategoriHewan.toEmpty,
            keluhan: data.keluhan.toEmpty,
            hasilKonsultasi: data.hasilKonsultasi.toEmpty,
            namaHewan: data.namaHewan.toEmpty,
            status: data.status.toEmpty,
            umurHewan: data.umurHewan.toEmpty,
            tambahanPemesanan: data.tambahanPemesanan.toEmpty,
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
        final list = (data.list ?? [])
            .map(
              (e) => Pemesanan(
                id: e.id.toEmpty,
                jenisLayanan: e.jenisLayanan.toEmpty,
                namaHewan: e.namaHewan.toEmpty,
                kategoriHewan: e.kategoriHewan.toEmpty,
                umurHewan: e.umurHewan.toEmpty,
                jenisKelaminHewan: e.jenisKelaminHewan.toEmpty,
                keluhan: e.keluhan.toEmpty,
                hasilKonsultasi: e.hasilKonsultasi.toEmpty,
                tanggal: e.tanggal.toEmpty,
                jam: e.jam.toEmpty,
                status: e.status.toEmpty,
                tambahanPemesanan: e.tambahanPemesanan.toEmpty,
              ),
            )
            .toList();
        return Result.success(
          ListPemesanan(values: list),
        );
      },
      failure: (error, stacktrace) {
        return Result.failure(error, stacktrace);
      },
    );
  }
}
