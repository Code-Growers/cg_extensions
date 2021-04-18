import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension CGTextStyleExtension on TextStyle {
  TextStyle get scale => copyWith(fontSize: fontSize?.sp);
}
