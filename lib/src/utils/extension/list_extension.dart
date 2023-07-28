import 'package:flutter/material.dart';
import 'string_extension.dart';

extension XListString on List<String> {
  /// [INFO]
  /// Use this for check if its null or empty

  List<DropdownMenuItem<String>> dropdownItems([bool isJam = false]) {
    return map(
      (e) => DropdownMenuItem(
        value: e,
        child: Text(
          isJam ? e.displayJam : e.toUpperCase(),
        ),
      ),
    ).toList();
  }
}
