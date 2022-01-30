import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:testing_project/themes/index.dart';

class _BoldTextStyle extends TextStyle {
  _BoldTextStyle(double fontSize)
      : super(
            fontWeight: FontWeight.bold,
            fontSize: fontSize.sp,
            color: AppColors.colorDarkBlue);
}

class _RegularTextStyle extends TextStyle {
  _RegularTextStyle(double fontSize)
      : super(
            fontWeight: FontWeight.w400,
            fontSize: fontSize.sp,
            color: AppColors.colorDarkBlue);
}

class _LightTextStyle extends TextStyle {
  _LightTextStyle(double fontSize)
      : super(
            fontWeight: FontWeight.w300,
            fontSize: fontSize.sp,
            color: AppColors.colorDarkBlue);
}

class CTextStyles {
  CTextStyles._();
  static final CTextStyles find = CTextStyles._();
  final regular10 = _RegularTextStyle(10);
  final regular12 = _RegularTextStyle(12);
  final regular14 = _RegularTextStyle(14);
  final regular16 = _RegularTextStyle(16);
  final regular18 = _RegularTextStyle(18);
  final regular20 = _RegularTextStyle(20);
  final regular22 = _RegularTextStyle(22);
  final regular24 = _RegularTextStyle(24);
  final regular28 = _RegularTextStyle(28);

  final bold12 = _BoldTextStyle(12);
  final bold14 = _BoldTextStyle(14);
  final bold16 = _BoldTextStyle(16);
  final bold18 = _BoldTextStyle(18);
  final bold24 = _BoldTextStyle(24);

  final light10 = _LightTextStyle(10);
  final light12 = _LightTextStyle(12);
  final light14 = _LightTextStyle(14);
}
