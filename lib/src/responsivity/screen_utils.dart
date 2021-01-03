import 'package:flutter/material.dart';

import 'spacing_utils.dart';

Widget withScreenUtil(BoxConstraints boxConstraints, Widget widget) {
  SpacingUtil.init(SpacingUtil.defaultSpacingStep);
  return widget;
}

final Map<String, double> _breakpoints = <String, double>{
  // iPhone SE
  '2xs': 0.00,
  // iPhone 6
  'xs': 320.00,
  // iPhone 11
  'sm': 375.00,
  'md': 450.00,
  'lg': 992.00,
  'xl': 1200.00,
  'xxl': 1900.00
};

T rValue<T>(
  BuildContext context, {
  T xxs,
  T xs,
  T sm,
  T md,
  T lg,
  T xl,
  T xxl,
}) {
  final Map<String, T> breakpointValues = <String, T>{
    '2xs': xxs,
    'xs': xs,
    'sm': sm,
    'md': md,
    'lg': lg,
    'xl': xl,
    'xxl': xxl,
  };
  final MediaQueryData mediaQuery = MediaQuery.of(context);
  final Orientation orientation = mediaQuery.orientation;
  double deviceWidth;
  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.height;
  } else {
    deviceWidth = mediaQuery.size.width;
  }
  return _breakpoints.entries.fold(null,
      (T acc, MapEntry<String, double> value) {
    if (breakpointValues[value.key] != null && deviceWidth > value.value) {
      return breakpointValues[value.key];
    } else {
      return acc;
    }
  });
}

double rSize(
  BuildContext context, {
  double xxs,
  double xs,
  double sm,
  double md,
  double lg,
  double xl,
  double xxl,
}) =>
    rValue<double>(context,
        sm: sm, lg: lg, md: md, xl: xl, xxs: xxs, xs: xs, xxl: xxl);
