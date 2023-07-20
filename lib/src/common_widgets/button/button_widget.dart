import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/src/constants/constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    bool? isEnabled,
    this.onTap,
    this.isSmall = false,
    this.isLoading = false,
  })  : _isEnabled = isEnabled ?? onTap != null ? true : false,
        color = ColorApp.purpleBlue,
        focusColor = ColorApp.offGrey,
        textColor = ColorApp.pureWhite,
        overlayColor = ColorApp.softGrey;

  final bool _isEnabled;

  final VoidCallback? onTap;
  final Color color;
  final Color focusColor;
  final Color overlayColor;
  final Color textColor;
  final bool isSmall;
  final bool isLoading;
  final String text;

  Color? _getColor() {
    return _isEnabled ? color : ColorApp.halfGrey;
  }

  Color? _getFocusColor() {
    return _isEnabled ? focusColor : null;
  }

  MaterialStateProperty<Color>? _getOverlayColor() {
    return _isEnabled ? MaterialStateProperty.all(overlayColor) : null;
  }

  Widget _getLoadingWidget() {
    return SizedBox(
      height: 18.h,
      width: 18.w,
      child: const CircularProgressIndicator(
        color: ColorApp.pureWhite,
      ),
    );
  }

  EdgeInsets _getPadding() {
    if (isSmall) {
      return EdgeInsets.symmetric(
        horizontal: 30.w,
        vertical: 8.h,
      );
    } else {
      return EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: _getColor(),
      borderRadius: BorderRadius.circular(60.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(60.r),
        onTap: _isEnabled ? onTap : null,
        focusColor: _getFocusColor(),
        overlayColor: _getOverlayColor(),
        child: Container(
          width: isSmall ? null : double.infinity,
          padding: _getPadding(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60.r),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Visibility(
                visible: isLoading,
                child: _getLoadingWidget(),
              ),
              Visibility(
                visible: !isLoading,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Text(
                  text,
                  style: TypographyTheme.title2.copyWith(
                    color: !_isEnabled ? ColorApp.offGrey : textColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
