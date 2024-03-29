import 'package:flutter/cupertino.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

extension CGStringExtension on String? {
  String get removeHtmlTags {
    RegExp exp = RegExp('<[^>]*>', multiLine: true, caseSensitive: true);
    return (this ?? '').replaceAll(exp, '');
  }

  String i18n(BuildContext context,
          {final String? fallbackKey,
          final Map<String, String>? translationParams}) =>
      FlutterI18n.translate(context, this ?? '',
          fallbackKey: fallbackKey, translationParams: translationParams);
}
