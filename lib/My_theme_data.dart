import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color darkPrimary = Color(0xFFFACC1D);
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkbg = Color(0xFF141A2E);

  static ThemeData darkTheme = ThemeData(
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: darkbg,
          onPrimary: Colors.white,
          secondary: darkPrimary,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: darkPrimary,
          onBackground: Colors.grey,
          surface: Colors.blueGrey,
          onSurface: Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
            color: const Color(0xFFF8F8F8),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: GoogleFonts.elMessiri(
            color: const Color(0xFFF8F8F8),
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
          bodySmall: GoogleFonts.elMessiri(
            color: const Color(0xFFF8F8F8),
            fontSize: 20,
            fontWeight: FontWeight.w100,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor: darkbg,
          selectedItemColor: darkPrimary,
          unselectedItemColor: Colors.white),
      bottomSheetTheme: const BottomSheetThemeData(backgroundColor: darkbg));

  static ThemeData lightTheme = ThemeData(
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: lightPrimary,
          onPrimary: Colors.black54,
          secondary: Colors.black,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: lightPrimary,
          onBackground: Colors.grey,
          surface: Colors.blueGrey,
          onSurface: Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: MyThemeData.lightPrimary),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
            color: const Color(0xFF242424),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: GoogleFonts.elMessiri(
            color: const Color(0xFF242424),
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
          bodySmall: GoogleFonts.elMessiri(
            color: const Color(0xFF242424),
            fontSize: 20,
            fontWeight: FontWeight.w100,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor: lightPrimary,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white),
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: Colors.white));
}
