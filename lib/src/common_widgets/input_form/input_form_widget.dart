import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../common_widgets.dart';

class InputFormWidget extends StatelessWidget {
  const InputFormWidget({
    super.key,
    required this.keyForm,
    required this.children,
    required this.onSubmit,
    required this.isLoading,
  });

  final GlobalKey<FormState> keyForm;
  final List<TextFieldWidget> children;
  final void Function() onSubmit;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: Column(
        children: [
          ...List.generate(
            children.length,
            (index) {
              final widget = children[index];
              return Column(
                children: [
                  widget,
                  Gap.h16,
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
