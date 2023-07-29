import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../utils/extension/dynamic_extension.dart';
import '../common_widgets.dart';

class TextFieldDropdownWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final List<DropdownMenuItem<String>> dropdownItems;
  final void Function(String?)? onChanged;
  const TextFieldDropdownWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    required this.dropdownItems,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: dropdownItems,
      value: controller.text == "" ? null : controller.text,
      icon: const Icon(LineIcons.list),
      onChanged: (String? value) {
        // log(value ?? "-");
        controller.text = value ?? "";
        if (onChanged.isNotNull) {
          onChanged!(value);
        }
      },
      decoration: TextFieldWidget.inputDecoration(hintText, false),
    );
  }
}
