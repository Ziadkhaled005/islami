import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{

  static const Color darkPrimary = Color(0xFFFACC1D);
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkbg = Color(0xFF141A2E);

  static ThemeData darkTheme=ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
            color: Color(0xFFF8F8F8),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: GoogleFonts.elMessiri(
            color: Color(0xFFF8F8F8),
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
          bodySmall: GoogleFonts.elMessiri(
            color: Color(0xFFF8F8F8),
            fontSize: 20,
            fontWeight: FontWeight.w100,
          )
      ),
      bottomNavigationBarTheme:BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor: darkbg,
          selectedItemColor: darkPrimary,
          unselectedItemColor: Colors.white
      )
  );

  static ThemeData lightTheme=ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
            color: Color(0xFF242424),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: GoogleFonts.elMessiri(
            color: Color(0xFF242424),
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
          bodySmall: GoogleFonts.elMessiri(
            color: Color(0xFF242424),
            fontSize: 20,
            fontWeight: FontWeight.w100,
          )
      ),
      bottomNavigationBarTheme:BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor: lightPrimary,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white
      )

  );
}