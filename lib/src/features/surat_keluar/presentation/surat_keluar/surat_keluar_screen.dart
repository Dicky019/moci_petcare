import 'package:flutter/material.dart';
import '/src/common_widgets/common_widgets.dart';
import '/src/constants/constants.dart';
import '/src/features/surat_keluar/presentation/surat_keluar/widgets/surat_keluar_content_section.dart';

class SuratKeluarScreen extends StatelessWidget {
  const SuratKeluarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Surat Keluar',
      ),
      body: Padding(
        padding: EdgeInsets.all(SizeApp.w16),
        child: const SuratKeluarContentSection(),
      ),
      floatingActionButton: FloatingActionButtonWidget(
        onPressed: () {},
      ),
    );
  }
}
