import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'responsivity/spacing_utils.dart';

extension RGap on Gap {
  static Gap xxsH() => Gap(ScreenUtil().setHeight(SpacingUtil().xxs));

  static Gap xxsW() => Gap(ScreenUtil().setWidth(SpacingUtil().xxs));

  static Gap xsH() => Gap(ScreenUtil().setHeight(SpacingUtil().xs));

  static Gap xsW() => Gap(ScreenUtil().setWidth(SpacingUtil().xs));

  static Gap smH() => Gap(ScreenUtil().setHeight(SpacingUtil().sm));

  static Gap smW() => Gap(ScreenUtil().setWidth(SpacingUtil().sm));

  static Gap mdH() => Gap(ScreenUtil().setHeight(SpacingUtil().md));

  static Gap mdW() => Gap(ScreenUtil().setWidth(SpacingUtil().md));

  static Gap lgH() => Gap(ScreenUtil().setHeight(SpacingUtil().lg));

  static Gap lgW() => Gap(ScreenUtil().setWidth(SpacingUtil().lg));

  static Gap xlH() => Gap(ScreenUtil().setHeight(SpacingUtil().xl));

  static Gap xlW() => Gap(ScreenUtil().setWidth(SpacingUtil().xl));

  static Gap xxlH() => Gap(ScreenUtil().setHeight(SpacingUtil().xxl));

  static Gap xxlW() => Gap(ScreenUtil().setWidth(SpacingUtil().xxl));

  static Gap h(num step) =>
      Gap(ScreenUtil().setHeight(SpacingUtil().getStepSpacing(step)));

  static Gap w(num step) =>
      Gap(ScreenUtil().setWidth(SpacingUtil().getStepSpacing(step)));
}
