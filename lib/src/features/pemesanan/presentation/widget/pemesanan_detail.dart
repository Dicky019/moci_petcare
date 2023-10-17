import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:moci_petcare/src/features/pemesanan/data/request/pemesanan_tambahan_request.dart';
import 'package:moci_petcare/src/features/pemesanan/domain/pemesanan.dart';
import 'package:moci_petcare/src/features/pemesanan/presentation/pemesanan_controller.dart';
import 'package:moci_petcare/src/utils/extension/string_extension.dart';

import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/constants.dart';

class PemesananDetailWidget extends ConsumerWidget {
  final Pemesanan pemesanan;
  final List<String> listTambahanGrooming;
  final List<String> listTambahanKesehatan;
  final List<String> listTambahanKonsultasi;

  const PemesananDetailWidget({
    super.key,
    required this.pemesanan,
    required this.listTambahanGrooming,
    required this.listTambahanKesehatan,
    required this.listTambahanKonsultasi,
  });

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
        PemesananTambahanWidget(
          pemesanan: pemesanan,
          listTambahanGrooming: listTambahanGrooming,
          listTambahanKesehatan: listTambahanKesehatan,
          listTambahanKonsultasi: listTambahanKonsultasi,
        ),
        Gap.h24,
      ],
    );
  }
}

class PemesananTambahanWidget extends ConsumerWidget {
  final Pemesanan pemesanan;
  final List<String> listTambahanGrooming;
  final List<String> listTambahanKesehatan;
  final List<String> listTambahanKonsultasi;
  const PemesananTambahanWidget({
    super.key,
    required this.pemesanan,
    required this.listTambahanGrooming,
    required this.listTambahanKesehatan,
    required this.listTambahanKonsultasi,
  });

  @override
  Widget build(BuildContext context, ref) {
    //
    final controller = ref.read(pemesananControllerProvider.notifier);
    final tambahanPemesanan = ref.watch(pemesananTambahanProvider).join(", ");
    final controllerTambahanPemesanan = ref.read(
      pemesananTambahanProvider.notifier,
    );

    bool isActive(String tambahan) => !tambahanPemesanan.contains(tambahan);

    onSetTambahan() {
      final pemesananTambahan = PemesananTambahanRequest(
        tambahanPemesanan: tambahanPemesanan,
      );
      return controller.setPemesanan(
        context,
        pemesananTambahan,
        pemesanan.id,
      );
    }

    onPemesananTambahan(String value) {
      controllerTambahanPemesanan.update((state) {
        final oldData = state;
        final cekData = oldData.remove(value);

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
