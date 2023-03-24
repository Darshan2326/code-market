import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context)=>ThemeData(
    primaryColor: Colors.blueAccent,
    fontFamily: GoogleFonts.poppins().fontFamily,
    appBarTheme: AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: Theme. of(context).textTheme,
    )
  );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark
  );

  static Color creamColor = Color(0xfff4f0f0);
  static Color darkbluish = Color(0xff403b56);
  static Color black = Color(0xff383636);
  static Color blue = Color(0xff12a9ed);
  static Color lightblue = Color(0xFF4FC3F7);



}