import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension TextStyleExtension on TextStyle {
  TextStyle get scale => copyWith(fontSize: fontSize.ssp);
}
