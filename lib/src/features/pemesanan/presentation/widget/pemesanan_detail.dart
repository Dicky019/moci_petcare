import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:moci_petcare/src/features/pemesanan/domain/pemesanan.dart';
import 'package:moci_petcare/src/features/pemesanan/domain/pemesanan_tambahan.dart';
import 'package:moci_petcare/src/features/pemesanan/presentation/pemesanan_controller.dart';
import 'package:moci_petcare/src/utils/extension/string_extension.dart';

import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/constants.dart';

class PemesananDetailWidget extends ConsumerWidget {
  final Pemesanan pemesanan;
  final ListPemesananTambahan listPemesananTambahan;

  const PemesananDetailWidget({
    super.key,
    required this.pemesanan,
    required this.listPemesananTambahan,
  });

  @override
  Widget build(BuildContext context, ref) {
    final tambahanPemesanan = ref.watch(pemesananTambahanProvider);
    return RefreshIndicator(
      onRefresh: () async {
        ref.read(pemesananControllerProvider.notifier).invalidateDetail(
              pemesanan.id,
            );
        ref.read(pemesananTambahanProvider.notifier).update(
              (state) => pemesanan.pemesananTambahan.toSet(),
            );
      },
      child: ListView(
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
            value: tambahanPemesanan.isEmpty
                ? "-"
                : tambahanPemesanan
                    .map((e) => e.value)
                    .join(", ")
                    .toUpperCase(),
          ),
          const Divider(
            color: ColorApp.purpleBlue,
          ),
          PemesananTambahanWidget(
            pemesanan: pemesanan,
            listPemesananTambahan: listPemesananTambahan,
          ),
          Gap.h24,
        ],
      ),
    );
  }
}

class PemesananTambahanWidget extends ConsumerWidget {
  final Pemesanan pemesanan;
  final ListPemesananTambahan listPemesananTambahan;
  const PemesananTambahanWidget({
    super.key,
    required this.pemesanan,
    required this.listPemesananTambahan,
  });

  @override
  Widget build(BuildContext context, ref) {
    //
    final controller = ref.read(pemesananControllerProvider.notifier);
    final tambahanPemesanan = ref.watch(pemesananTambahanProvider);
    final controllerTambahanPemesanan = ref.read(
      pemesananTambahanProvider.notifier,
    );

    log((pemesanan.jenisLayanan.toUpperCase() == "KESEHATAN").toString(),
        name: 'pemesanan.jenisLayanan.toUpperCase() == "KESEHATAN"');
    log(listPemesananTambahan.toString(),
        name: 'pemesanan.jenisLayanan.toUpperCase() == "KESEHATAN"');

    onSetTambahan() {
      return controller.setPemesanan(
        context,
        tambahanPemesanan.toList(),
        pemesanan.id,
      );
    }

    onPemesananTambahan(PemesananTambahan value) {
      log(tambahanPemesanan.join(" , "), name: 'tambahanPemesanan.join(" , ")');
      controllerTambahanPemesanan.update((state) {
        final oldData = state;
        final cekData = oldData.remove(value);

        if (cekData) {
          return oldData.skipWhile((newData) => newData == value).toSet();
        }

        return {...oldData, value};
      });
    }

    return ExpansionTile(
      title: const Text(
        "Tambahan Pemesanan",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      children: [
        if (pemesanan.jenisLayanan.toUpperCase() == "GROOMING")
          for (var tambahan in listPemesananTambahan.listTambahanGrooming)
            ListTile(
              title: Text(tambahan.value),
              trailing: Icon(
                !tambahanPemesanan.contains(tambahan)
                    ? Icons.add
                    : Icons.minimize_outlined,
              ),
              onTap: () => onPemesananTambahan(tambahan),
            ),
        //
        if (pemesanan.jenisLayanan.toUpperCase() == "KESEHATAN")
          for (var tambahan in listPemesananTambahan.listTambahanKesehatan) ...[
            ListTile(
              title: Text(tambahan.value),
              trailing: Icon(
                !tambahanPemesanan.contains(tambahan)
                    ? Icons.add
                    : Icons.minimize_outlined,
              ),
              onTap: () => onPemesananTambahan(tambahan),
            ),
          ],
        //
        if (pemesanan.jenisLayanan.toUpperCase() == "KONSULTASI")
          for (var tambahan in listPemesananTambahan.listTambahanKonsultasi)
            ListTile(
              title: Text(tambahan.value),
              trailing: Icon(
                !tambahanPemesanan.contains(tambahan)
                    ? Icons.add
                    : Icons.minimize_outlined,
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
