
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.onClick, this.onChange,
  }) : _isSearch = false;

  const TextFieldWidget.search({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.onClick, this.onChange,
  }) : _isSearch = true;

  final TextEditingController controller;
  final String hintText;
  final String? Function(String? value)? validator;
  final Function(String value)? onChange;
  final bool _isSearch;
  final VoidCallback? onClick;

  static inputDecoration(String hintText, bool isSearch) => InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            width: 1,
            color: ColorApp.halfGrey,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide:
              BorderSide(width: 2, color: ColorApp.purpleLight // Color Primary,
                  ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
        suffixIcon: isSearch == true ? const Icon(Icons.search) : null,
      );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onTap: onClick,
      onChanged: onChange,
      readOnly: onClick != null,
      decoration: inputDecoration(hintText, _isSearch),
    );
  }
}
