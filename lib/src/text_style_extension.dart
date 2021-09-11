import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension CGTextStyleExtension on TextStyle? {
  TextStyle? get scale =>
      this != null ? this!.copyWith(fontSize: this!.fontSize?.sp) : this;
}
