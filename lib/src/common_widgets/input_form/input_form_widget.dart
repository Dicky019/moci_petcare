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
    required this.title,
  });

  final GlobalKey<FormState> keyForm;
  final List<Widget> children;
  final void Function() onSubmit;
  final bool isLoading;
  final String title;

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
                  Gap.h12,
                ],
              );
            },
          ),
          Gap.h12,
          ButtonWidget(
            text: title,
            isLoading: isLoading,
            onTap: onSubmit,
          ),
          Gap.h8,
        ],
      ),
    );
  }
}
