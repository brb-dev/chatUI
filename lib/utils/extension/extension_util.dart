import 'package:chatui/core/theme/app_color.dart';
import 'package:flutter/material.dart';

extension SizeIntExtension on int {
  SizedBox get hs => SizedBox(height: toDouble());
  SizedBox get wd => SizedBox(width: toDouble());
}

extension SizeDoubleExtension on double {
  SizedBox get hs => SizedBox(height: toDouble());
  SizedBox get wd => SizedBox(width: toDouble());
}
