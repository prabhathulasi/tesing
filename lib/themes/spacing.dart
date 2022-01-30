import 'package:flutter/material.dart';

class AppSpacing {
  static const radius = 9.0;
  static const radiusxl = 40.0;
  static const verticalxs = 3.0;
  static const vertical = 9.0;
  static const verticalxl = 15.0;
  static const horizontalxs = 3.0;
  static const horizontal = 9.0;
  static const horizontalxl = 15.0;
  static const dialogMargin = EdgeInsets.all(25);
  static const bottomSheetRadius = BorderRadius.vertical(
    top: Radius.circular(radiusxl),
  );
  static const topRadiusxl = BorderRadius.vertical(
    top: Radius.circular(radiusxl),
  );
  static final allRadiusxl = BorderRadius.circular(radiusxl);
  static final allRadius = BorderRadius.circular(radius);
  static const allSpace = EdgeInsets.symmetric(
    vertical: vertical,
    horizontal: horizontal,
  );
  static const allSpacexl = EdgeInsets.symmetric(
    vertical: verticalxl,
    horizontal: horizontal,
  );
  static const allSpacexs = EdgeInsets.symmetric(
    vertical: verticalxs,
    horizontal: horizontalxs,
  );

  static const verticalSpace = EdgeInsets.symmetric(
    vertical: vertical,
  );
  static const verticalSpacexs = EdgeInsets.symmetric(
    vertical: verticalxs,
  );
  static const circularSpace = EdgeInsets.symmetric(
    vertical: verticalxs,
    horizontal: horizontal,
  );
  static const horizontalSpace = EdgeInsets.symmetric(
    horizontal: horizontal,
  );
}
