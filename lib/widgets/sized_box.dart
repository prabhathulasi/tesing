import 'package:flutter/material.dart';
import 'package:testing_project/themes/index.dart';

class CSizedBox extends SizedBox {
  const CSizedBox.height({
    Key? key,
    double value = AppSpacing.vertical,
  }) : super(height: value, key: key);
  const CSizedBox.heightxl({Key? key})
      : super(height: AppSpacing.verticalxl, key: key);
  const CSizedBox.heightxs({Key? key})
      : super(height: AppSpacing.verticalxs, key: key);
  const CSizedBox.width({
    Key? key,
    double value = AppSpacing.horizontal,
  }) : super(width: value, key: key);
  const CSizedBox.widthxs({Key? key})
      : super(width: AppSpacing.horizontalxs, key: key);
}
