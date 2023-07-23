import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/gen/fonts.gen.dart';

/// [INFO]
/// Constant for typography to be used in the app with following design system

class TypographyTheme {
  static TextStyle title1 = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle title2 = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle body = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 12.sp,
  );

  static TextStyle body2 = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 14.sp,
  );
}
