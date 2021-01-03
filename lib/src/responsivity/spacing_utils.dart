import 'package:febu/febu.dart';

class SpacingUtil {
  static SpacingUtil _instance;
  static const double defaultSpacingStep = 4.0;

  double spacingStep = defaultSpacingStep;

  static double _xssSpacing;
  static double _xsSpacing;
  static double _smSpacing;
  static double _mdSpacing;
  static double _lgSpacing;
  static double _xlSpacing;
  static double _xxlSpacing;

  SpacingUtil._();

  factory SpacingUtil() {
    assert(
      _instance != null,
      '\nEnsure to initialize SpacingUtil before accessing it.\nPlease execute the init method : SpacingUtil.init()',
    );
    return _instance;
  }

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
    _instance ??= SpacingUtil._();
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
