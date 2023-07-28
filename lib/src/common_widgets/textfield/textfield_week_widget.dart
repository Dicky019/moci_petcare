import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:week_day_picker/week_day_picker.dart';

import '../common_widgets.dart';

class TextFieldWeekWidget extends StatelessWidget {
  final TextEditingController controller;
  const TextFieldWeekWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFieldWidget(
      textEditingController: controller,
      hintText: "Hari",
      onClick: () async {
        final now = DateTime.now();
        final firstDate = DateTime(now.year, now.month, now.day);
        final lastDate = DateTime(now.year, now.month + 1, now.day);
        final selectedDay = await WeekDayPicker(
          context: context,
          initialDate: now,
          firstDate: firstDate,
          lastDate: lastDate,
          locale: const Locale.fromSubtags(languageCode: 'id'),
          selectableDayInWeek: [1, 2, 3, 4, 5],
          selectableBitwiseOperator: BitwiseOperator.or,
        ).show();
        if (selectedDay != null) {
          final result = DateFormat("EEEE, d MMMM y").format(selectedDay);
          controller.text = result;
        }
      },
    );
  }
}
