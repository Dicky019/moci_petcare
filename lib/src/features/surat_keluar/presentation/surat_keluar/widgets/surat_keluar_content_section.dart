import 'package:flutter/material.dart';
import '/src/common_widgets/common_widgets.dart';
import '/src/constants/constants.dart';

class SuratKeluarContentSection extends StatelessWidget {
  const SuratKeluarContentSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldWidget.search(
          textEditingController: TextEditingController(),
          hintText: 'Cari . . . ',
        ),
        Gap.h12,
        Expanded(
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: SizeApp.h8,
                ),
                child: CardWidget.primary(
                  suratName: 'Surat 01',
                  suratCategory: 'surat',
                  suratDate: '13 juni 2022',
                  onTap: () {},
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
