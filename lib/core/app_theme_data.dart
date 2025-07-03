import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'package:technical_mobile/core/color_values.dart';

class AppThemeData {
  static ThemeData getTheme(BuildContext context) {
    const primaryColor = ColorValues.primary50;
    final primaryColorMap = <int, Color>{
      50: primaryColor,
      100: primaryColor,
      200: primaryColor,
      300: primaryColor,
      400: primaryColor,
      500: primaryColor,
      600: primaryColor,
      700: primaryColor,
      800: primaryColor,
      900: primaryColor,
    };
    final primaryMaterialColor =
        MaterialColor(primaryColor.value, primaryColorMap);

    return ThemeData(
      useMaterial3: true,
      primaryColor: primaryColor,
      primarySwatch: primaryMaterialColor,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: primaryMaterialColor),
      scaffoldBackgroundColor: ColorValues.white,
      canvasColor: ColorValues.white,
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        centerTitle: false,
        surfaceTintColor: Colors.transparent,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorValues.text50,
        unselectedItemColor: ColorValues.grey20,
        selectedIconTheme: IconThemeData(
          size: 6.w,
          color: ColorValues.primary50,
        ),
        selectedLabelStyle: GoogleFonts.plusJakartaSans(
          color: ColorValues.text50,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: GoogleFonts.plusJakartaSans(
          color: ColorValues.grey20,
          fontSize: 13,
          fontWeight: FontWeight.normal,
        ),
      ),
      iconTheme: IconThemeData(size: 6.w, color: ColorValues.grey50),
      navigationBarTheme: NavigationBarThemeData(
        elevation: 0,
        indicatorColor: Colors.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        surfaceTintColor: ColorValues.white,
        backgroundColor: ColorValues.white,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const TextStyle(
              color: ColorValues.primary50,
              fontSize: 13,
              height: 0,
              fontWeight: FontWeight.bold,
            );
          }
          return const TextStyle(
            color: ColorValues.grey20,
            fontSize: 13,
            height: 0,
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(color: ColorValues.primary50);
          }
          return const IconThemeData(color: ColorValues.grey20);
        }),
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.plusJakartaSans(
          color: ColorValues.text50,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: GoogleFonts.plusJakartaSans(
          color: ColorValues.text50,
          fontSize: 19,
          fontWeight: FontWeight.w300,
        ),
        displaySmall: GoogleFonts.plusJakartaSans(
          color: ColorValues.text50,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: GoogleFonts.plusJakartaSans(
          color: ColorValues.text50,
          fontSize: 28,
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: GoogleFonts.plusJakartaSans(
          color: ColorValues.text50,
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
        titleLarge: GoogleFonts.plusJakartaSans(
          color: ColorValues.text50,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: GoogleFonts.plusJakartaSans(
          color: ColorValues.text50,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: GoogleFonts.plusJakartaSans(
          color: ColorValues.text50,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: GoogleFonts.plusJakartaSans(
          color: ColorValues.text50,
          fontSize: 19,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: GoogleFonts.plusJakartaSans(
          color: ColorValues.text50,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        labelLarge: GoogleFonts.plusJakartaSans(
          color: ColorValues.text50,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        bodySmall: GoogleFonts.plusJakartaSans(
          color: ColorValues.text50,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        labelSmall: GoogleFonts.plusJakartaSans(
          color: ColorValues.text50,
          fontSize: 10,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
        ),
      ),
    );
  }
}
