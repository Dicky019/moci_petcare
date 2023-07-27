import 'dart:developer';
import 'package:flutter/material.dart';

import '../common_widgets.dart';

class TextFieldDropdownWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final List<DropdownMenuItem<String>>  dropdownItems;
  const TextFieldDropdownWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator, required this.dropdownItems,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: dropdownItems,
      onChanged: (String? value) {
        log(value ?? "-");
        controller.text = value ?? "";
      },
      decoration: TextFieldWidget.inputDecoration(hintText, false),
    );
  }

 
}
