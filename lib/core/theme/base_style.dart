import 'package:chatui/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseStyles {
  BaseStyles._();

  ///H1 Emphasized
  static TextStyle titleLarge = GoogleFonts.fraunces(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static TextStyle titleMedium = GoogleFonts.fraunces(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.20,
    shadows: [
      Shadow(
        offset: Offset(0, 1),
        blurRadius: 2,
        color: Color(0xFF000000).withValues(alpha: (0.05 * 255)),
      ),
    ],
  );

  static TextStyle titleSmall = GoogleFonts.fraunces(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColor.textColor,
    height: 1.20,
  );

  static TextStyle lebelLarge = GoogleFonts.fraunces(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColor.timeColor,
    height: 1.30,
  );

  static TextStyle bodyLarge = GoogleFonts.fraunces(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.10,
  );
}
