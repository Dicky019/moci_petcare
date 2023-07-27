import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/constants.dart';
import 'widget/pemesanan_list.dart';

class PemesananListScreen extends ConsumerWidget {
  const PemesananListScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return const Scaffold(
      backgroundColor: ColorApp.pureWhite,
      appBar: AppBarWidget(title: "Pemesanan"),
      body: PemesananList(),
    );
  }
}
