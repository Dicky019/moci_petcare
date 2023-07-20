import 'package:flutter/material.dart';
import '/src/common_widgets/common_widgets.dart';
import '/src/constants/constants.dart';
import '/src/features/surat_masuk/presentation/widgets/surat_masuk_content_section.dart';

class SuratMasukScreen extends StatelessWidget {
  const SuratMasukScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Surat Masuk',
      ),
      body: Padding(
        padding: EdgeInsets.all(SizeApp.w16),
        child: const SuratMasukContentSection(),
      ),
      floatingActionButton: FloatingActionButtonWidget(
        onPressed: () {},
      ),
    );
  }
}
