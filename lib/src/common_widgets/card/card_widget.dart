import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/src/constants/constants.dart';

enum CardTypes {
  _primary,
  // _small,
  _header,
}

class CardWidget extends StatelessWidget {
  /// [INFO] primary card
  const CardWidget.primary({
    Key? key,

    /// [INFO] required params
    required this.child,
    this.onTap,
  })  : cardTypes = CardTypes._primary,
        super(key: key);

  const CardWidget.header({
    Key? key,

    /// [INFO] required params
    required this.child,
    this.onTap,
  })  : cardTypes = CardTypes._header,
        super(key: key);

  final Widget child;
  final VoidCallback? onTap;
  final CardTypes cardTypes;

  @override
  Widget build(BuildContext context) {

    EdgeInsets padding() {
      return cardTypes == CardTypes._primary
          ? EdgeInsets.all(
              SizeApp.w24,
            )
          : EdgeInsets.all(
              SizeApp.w4,
            );
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding(),
        margin: EdgeInsets.symmetric(
          horizontal: SizeApp.w16,
        ),
        decoration: BoxDecoration(
          color: ColorApp.pureWhite,
          borderRadius: BorderRadius.all(
            Radius.circular(12.r),
          ),
        ),
        child: child,
      ),
    );
  }
}
