import 'package:flutter/material.dart';
import '/src/constants/constants.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      backgroundColor: ColorApp.purpleBlue,
      onPressed: onPressed,
      child: const Icon(Icons.add),
    );
  }
}
