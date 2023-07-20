import 'package:flutter/material.dart';

import '../../../common_widgets/input_form/input_form_widget.dart';
import '../../../common_widgets/textfield/textfield_widget.dart';
import '../../../constants/constants.dart';

class SuratReshuffleScreen extends StatelessWidget {
  const SuratReshuffleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Surat Reshuffle"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: SizeApp.h20),
        child: InputFormWidget(
          keyForm: GlobalKey<FormState>(),
          isLoading: false,
          onSubmit: () {},
          children: [
            TextFieldWidget(
              hintText: "Nomor Surat",
              textEditingController: TextEditingController(),
            ),
            TextFieldWidget(
              hintText: "Perihal",
              textEditingController: TextEditingController(),
            ),
            TextFieldWidget(
              hintText: "Nama",
              textEditingController: TextEditingController(),
            ),
            TextFieldWidget(
              hintText: "Dari",
              textEditingController: TextEditingController(),
            ),
            TextFieldWidget(
              hintText: "Ke",
              textEditingController: TextEditingController(),
            ),
          ],
        ),
      ),
    );
  }
}
