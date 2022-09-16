import 'package:febu/febu.dart';

class SpacingUtil {
  static const double defaultSpacingStep = 4.0;

  static SpacingUtil _instance = SpacingUtil._();

  double spacingStep = defaultSpacingStep;

  static double _xssSpacing = 0;
  static double _xsSpacing = 0;
  static double _smSpacing = 0;
  static double _mdSpacing = 0;
  static double _lgSpacing = 0;
  static double _xlSpacing = 0;
  static double _xxlSpacing = 0;

  SpacingUtil._();

  factory SpacingUtil() => _instance;

  static void init(
    double spacingStep, {
    num xxs = 1,
    num xs = 2,
    num sm = 3,
    num md = 4,
    num lg = 5,
    num xl = 6,
    num xxl = 7,
  }) {
    _instance..spacingStep = spacingStep;
    _xssSpacing = spacingStep.mul(xxs);
    _xsSpacing = spacingStep.mul(xs);
    _smSpacing = spacingStep.mul(sm);
    _mdSpacing = spacingStep.mul(md);
    _lgSpacing = spacingStep.mul(lg);
    _xlSpacing = spacingStep.mul(xl);
    _xxlSpacing = spacingStep.mul(xxl);
  }

  double get xxs => _xssSpacing;

  double get xs => _xsSpacing;

  double get sm => _smSpacing;

  double get md => _mdSpacing;

  double get lg => _lgSpacing;

  double get xl => _xlSpacing;

  double get xxl => _xxlSpacing;

  double getStepSpacing(num step) => spacingStep.mul(step);
}
