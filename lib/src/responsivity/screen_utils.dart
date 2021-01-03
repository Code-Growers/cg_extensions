import 'package:flutter/material.dart';

import 'spacing_utils.dart';

Widget withScreenUtil(Widget widget) {
  SpacingUtil.init(SpacingUtil.defaultSpacingStep);
  return widget;
}
