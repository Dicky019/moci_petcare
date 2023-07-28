import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moci_petcare/src/features/pemesanan/domain/pemesanan.dart';

import '../../../../constants/constants.dart';

class PemesananDetailWidget extends StatelessWidget {
  final Pemesanan pemesanan;
  const PemesananDetailWidget({super.key, required this.pemesanan});

  @override
  Widget build(BuildContext context) {
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
          title: "Jenis Layanan :".toUpperCase(),
          value: pemesanan.jenisLayanan.toUpperCase(),
        ),
        const Divider(
          color: ColorApp.purpleBlue,
        ),
        TitleAndValue(
          title: "Tanggal :".toUpperCase(),
          value: "${pemesanan.hari}\n${pemesanan.jam}".toUpperCase(),
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
          title: "Kategori Hewan :".toUpperCase(),
          value: pemesanan.kategoriHewan.toUpperCase(),
        ),
        const Divider(
          color: ColorApp.purpleBlue,
        ),
        TitleAndValue(
          title: "Keluhan :".toUpperCase(),
          value: pemesanan.keluhan.toUpperCase(),
        ),
        const Divider(
          color: ColorApp.purpleBlue,
        ),
        Gap.h12,
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
            child: Text(
              title,
              style: TypographyTheme.body2.copyWith(
                color: ColorApp.purpleDark,
                fontWeight: FontWeight.w600, // Color Primary,
              ),
            ),
          ),
          Expanded(
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
