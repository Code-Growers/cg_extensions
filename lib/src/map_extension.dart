import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'responsivity/screen_utils.dart';

extension CgMapExtension on Map<String, Widget Function(BuildContext context)> {
  Map<String, Widget Function(BuildContext context)> addRoute<T>(
          T route, Widget screen) =>
      this
        ..update(describeEnum(route),
            (_) => (BuildContext context) => withScreenUtil(screen),
            ifAbsent: () => (BuildContext context) => withScreenUtil(screen));
}
