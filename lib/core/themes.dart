import 'package:ecommerce_clothing_store/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    backgroundColor: kWhite,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: kWhite,
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.encodeSans(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      headlineMedium: GoogleFonts.encodeSans(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      headlineSmall: GoogleFonts.encodeSans(
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),
      //! descreption of item
      bodySmall: GoogleFonts.encodeSans(
        fontSize: 12.sp,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: GoogleFonts.encodeSans(
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
        color: const Color(0xff878787),
      ),
    ),
  );
}
