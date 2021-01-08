import 'package:cg_extensions/src/providers/flutter_toast_provider.dart';
import 'package:flutter/material.dart';

import 'spacing_utils.dart';

Widget withScreenUtil(Widget widget) {
  SpacingUtil.init(SpacingUtil.defaultSpacingStep);
  return FlutterToastProvider(child: widget);
}
