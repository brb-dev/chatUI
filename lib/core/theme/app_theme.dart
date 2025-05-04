import 'package:flutter/material.dart';

import 'base_style.dart';

enum AppTheme { light, dark }

final appThemeData = {
  AppTheme.light: ThemeData.light().copyWith(textTheme: _textTheme()),
  AppTheme.dark: ThemeData.light().copyWith(textTheme: _textTheme()),
};

TextTheme _textTheme() {
  return ThemeData.light().textTheme.copyWith(
    titleLarge: BaseStyles.titleLarge,
    titleMedium: BaseStyles.titleMedium,
    titleSmall: BaseStyles.titleSmall,
    labelLarge: BaseStyles.lebelLarge,
    bodyLarge: BaseStyles.bodyLarge,
  );
}
