import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension MapExtension on Map<String, Widget Function(BuildContext context)> {
  Map<String, Widget Function(BuildContext context)> addRoute<T>(
          T route, Widget screen) =>
      this
        ..update(describeEnum(route), (_) => (BuildContext context) => screen,
            ifAbsent: () => (BuildContext context) => screen);
}
