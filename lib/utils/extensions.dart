import 'package:flutter/material.dart';

import 'package:testing_project/themes/index.dart';

extension WidgetUtils on Widget {
  Padding padding(EdgeInsets padding) => Padding(
        padding: padding,
        child: this,
      );
  Padding paddingPoints({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          left: left,
          top: top,
          bottom: bottom,
          right: right,
        ),
        child: this,
      );
  Expanded expanded([int flex = 1]) => Expanded(
        flex: flex,
        child: this,
      );
  Flexible flexible() => Flexible(
        child: this,
      );
  Center center() => Center(
        child: this,
      );
}

extension TextStyling on TextStyle {
  TextStyle customColor(Color color) => copyWith(
        color: color,
      );

  TextStyle get primary => copyWith(
        color: AppColors.primary,
      );
  TextStyle get white => copyWith(
        color: Colors.white,
      );

  TextStyle toggleColor({
    required bool condition,
    Color? active,
    Color? inactive,
  }) =>
      copyWith(
        color: condition ? active : inactive,
      );
}
