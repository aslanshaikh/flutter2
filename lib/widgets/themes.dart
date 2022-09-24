import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
          titleTextStyle: Theme.of(context).textTheme.headline6
          // titleTextStyle: TextStyle(color: Colors.black),

          )
      //primaryTextTheme: GoogleFonts.latoTextTheme()

      );

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark
          //primaryTextTheme: GoogleFonts.latoTextTheme()

          );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color.fromARGB(216, 26, 2, 41);
}
