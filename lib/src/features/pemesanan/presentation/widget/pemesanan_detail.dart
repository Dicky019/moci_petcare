import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moci_petcare/src/constants/data/list_data.dart';
import 'package:moci_petcare/src/features/pemesanan/data/request/pemesanan_tambahan_request.dart';
import 'package:moci_petcare/src/features/pemesanan/domain/pemesanan.dart';
import 'package:moci_petcare/src/features/pemesanan/presentation/pemesanan_controller.dart';
import 'package:moci_petcare/src/utils/extension/string_extension.dart';

import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/constants.dart';

class PemesananDetailWidget extends ConsumerWidget {
  final Pemesanan pemesanan;
  const PemesananDetailWidget({super.key, required this.pemesanan});

  @override
  Widget build(BuildContext context, ref) {
    final tambahanPemesanan = ref.watch(pemesananTambahanProvider).join(", ");
    return ListView(
      children: [
        Gap.h12,
        TitleAndValue(
          title: "Nama :".toUpperCase(),
          value: pemesanan.namaHewan.toUpperCase(),
        ),
        const Divider(
          color: ColorApp.purpleBlue,
        ),
        TitleAndValue(
          title: "Umur :".toUpperCase(),
          value: pemesanan.umurHewan.toUpperCase(),
        ),
        const Divider(
          color: ColorApp.purpleBlue,
        ),
        TitleAndValue(
          title: "Jenis Kelamin :".toUpperCase(),
          value: pemesanan.jenisKelaminHewan.toUpperCase(),
        ),
        const Divider(
          color: ColorApp.purpleBlue,
        ),
        TitleAndValue(
          title: "Kategori :".toUpperCase(),
          value: pemesanan.kategoriHewan.toUpperCase(),
        ),
        const Divider(
          color: ColorApp.purpleBlue,
        ),
        TitleAndValue(
          title: "Jenis Layanan :".toUpperCase(),
          value: pemesanan.jenisLayanan.toUpperCase(),
        ),
        const Divider(
          color: ColorApp.purpleBlue,
        ),
        TitleAndValue(
          title: "Tanggal :".toUpperCase(),
          value: "${pemesanan.tanggal}\nJam ${pemesanan.jam.displayJam}"
              .toUpperCase(),
        ),
        const Divider(
          color: ColorApp.purpleBlue,
        ),
        if (pemesanan.keluhan.trim() != '' || pemesanan.keluhan == "-") ...[
          TitleAndValue(
            title: "Keluhan :".toUpperCase(),
            value: pemesanan.keluhan.toUpperCase(),
          ),
          const Divider(
            color: ColorApp.purpleBlue,
          ),
        ],
        if (pemesanan.hasilKonsultasi.trim() != '' ||
            pemesanan.hasilKonsultasi == "-") ...[
          TitleAndValue(
            title: "Hasil Keluhan :".toUpperCase(),
            value: pemesanan.hasilKonsultasi.toUpperCase(),
          ),
          const Divider(
            color: ColorApp.purpleBlue,
          ),
        ],
        TitleAndValue(
          title: "Tambahan Pemesanan :".toUpperCase(),
          value:
              tambahanPemesanan == "" ? "-" : tambahanPemesanan.toUpperCase(),
        ),
        const Divider(
          color: ColorApp.purpleBlue,
        ),
        PemesananTambahanWidget(pemesanan: pemesanan),
        Gap.h24,
      ],
    );
  }
}

class PemesananTambahanWidget extends ConsumerWidget {
  final Pemesanan pemesanan;
  const PemesananTambahanWidget({super.key, required this.pemesanan});

  @override
  Widget build(BuildContext context, ref) {
    const listTambahanGrooming = ListData.listPemesananGrooming;
    const listTambahanKesehatan = ListData.listPemesananKesehatan;
    const listTambahanKonsultasi = ListData.listPemesananKonsultasi;
    const listPemesananKesehatanPertahap =
        ListData.listPemesananKesehatanPertahap;
    //
    final controller = ref.read(pemesananControllerProvider.notifier);
    final tambahanPemesanan = ref.watch(pemesananTambahanProvider).join(", ");
    final controllerTambahanPemesanan =
        ref.read(pemesananTambahanProvider.notifier);
    bool isActive(String tambahan) => !tambahanPemesanan.contains(tambahan);

    onSetTambahan() {
      final pemesananTambahan = PemesananTambahanRequest(
        tambahanPemesanan: tambahanPemesanan,
      );
      return controller.setPemesanan(context,pemesananTambahan, pemesanan.id);
    }

    onPemesananTambahan(String value) {
      controllerTambahanPemesanan.update((state) {
        final oldData = state;
        final cekData = oldData.remove(value);
        // if (oldData.contains("Vaksin Rabies")) {
          for (var element in listPemesananKesehatanPertahap) {
            oldData.remove(element);
          }
        // }

        if (cekData) {
          return oldData.skipWhile((newData) => newData == value).toList();
        }

        return [...oldData, value];
      });
    }

    return ExpansionTile(
      title: const Text(
        "Tambahan Pemesanan",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      children: [
        if (pemesanan.jenisLayanan.toUpperCase() == "GROOMING")
          for (var tambahan in listTambahanGrooming)
            ListTile(
              title: Text(tambahan),
              trailing: Icon(
                isActive(tambahan) ? Icons.add : Icons.minimize_outlined,
              ),
              onTap: () => onPemesananTambahan(tambahan),
            ),
        //
        if (pemesanan.jenisLayanan.toUpperCase() == "Kesehatan".toUpperCase())
          for (var tambahan in listTambahanKesehatan) ...[
            if (tambahan != "Vaksin Pertahap")
              ListTile(
                title: Text(tambahan),
                trailing: Icon(
                  isActive(tambahan) ? Icons.add : Icons.minimize_outlined,
                ),
                onTap: () => onPemesananTambahan(tambahan),
              ),
            if (tambahan == "Vaksin Pertahap")
              ExpansionTile(
                title: Text(tambahan),
                initiallyExpanded:
                    listPemesananKesehatanPertahap.contains(tambahanPemesanan),
                children: [
                  for (var tambahan in listPemesananKesehatanPertahap)
                    ListTile(
                      title: Text(tambahan),
                      trailing: Icon(
                        isActive(tambahan)
                            ? Icons.add
                            : Icons.minimize_outlined,
                      ),
                      onTap: () => onPemesananTambahan(tambahan),
                    )
                ],
              ),
          ],
        //
        if (pemesanan.jenisLayanan.toUpperCase() == "KONSULTASI")
          for (var tambahan in listTambahanKonsultasi)
            ListTile(
              title: Text(tambahan),
              trailing: Icon(
                isActive(tambahan) ? Icons.add : Icons.minimize_outlined,
              ),
              onTap: () => onPemesananTambahan(tambahan),
            ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: ButtonWidget(
            text: "Save",
            isSmall: true,
            isLoading: false,
            onTap: onSetTambahan,
          ),
        ),
      ],
    );
  }
}

class TitleAndValue extends StatelessWidget {
  const TitleAndValue({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              title,
              style: TypographyTheme.body2.copyWith(
                color: ColorApp.purpleDark,
                fontWeight: FontWeight.w500, // Color Primary,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Text(
              value,
              style: TypographyTheme.body2.copyWith(
                color: ColorApp.purpleDark,
                fontWeight: FontWeight.w600, // Color Primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
