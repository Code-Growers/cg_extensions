import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'responsivity/screen_utils.dart';

extension CGMapExtension on Map<String, Widget Function(BuildContext context)> {
  Map<String, Widget Function(BuildContext context)> addRoute(
          Object route, Widget screen) =>
      this
        ..update(describeEnum(route),
            (_) => (BuildContext context) => withScreenUtil(screen),
            ifAbsent: () => (BuildContext context) => withScreenUtil(screen));
}
