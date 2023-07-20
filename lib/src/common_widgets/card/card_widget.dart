import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/src/constants/constants.dart';

enum CardTypes {
  _primary,
  _small,
  _suratCategory,
}

class CardWidget extends StatelessWidget {
  /// [INFO] primary card
  const CardWidget.primary({
    Key? key,

    /// [INFO] required params
    required this.suratName,
    required this.suratCategory,
    required this.suratDate,
    required this.onTap,
  })  : _cardVariant = CardTypes._primary,
        isSmall = false,
        super(key: key);

  /// [INFO] small card
  const CardWidget.small({
    Key? key,
    required this.suratCategory,
    required this.onTap,
  })  : _cardVariant = CardTypes._small,
        suratName = '',
        suratDate = '',
        isSmall = true,
        super(key: key);

  /// [INFO] surat category
  const CardWidget.suratCategory({
    Key? key,
    required this.suratName,
    required this.onTap,
  })  : _cardVariant = CardTypes._suratCategory,
        suratCategory = '',
        suratDate = '',
        isSmall = false,
        super(key: key);

  final String suratName;
  final String suratCategory;
  final String suratDate;
  final bool isSmall;
  final VoidCallback onTap;
  final CardTypes _cardVariant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: isSmall ? SizeApp.customWidth(105) : null,
        padding: EdgeInsets.all(
          isSmall ? SizeApp.w12 : SizeApp.w16,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorApp.halfGrey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(12.r),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: isSmall == true
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.start,
              children: [
                if (_cardVariant == CardTypes._primary ||
                    _cardVariant == CardTypes._small) ...[
                  FittedBox(
                    child: Icon(
                      Icons.circle,
                      size: 50.h,
                      color: ColorApp.halfGrey,
                    ),
                  ),
                ],
                if (isSmall == false) ...[
                  Gap.w16,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        suratName,
                        style: TypographyTheme.title2.copyWith(
                          color: ColorApp.purpleDark,
                        ),
                      ),
                      if (_cardVariant == CardTypes._primary) ...[
                        Gap.h4,
                        Text(suratCategory),
                        Gap.h4,
                        Text(suratDate),
                      ],
                    ],
                  ),
                ]
              ],
            ),
            if (isSmall == true) ...[
              Gap.h4,
              Expanded(
                child: FittedBox(
                  child: Text(
                    suratCategory,
                    style: TypographyTheme.body,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
