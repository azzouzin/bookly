import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextThemes {
  static const TextStyle titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  static TextStyle titleMeduiem = GoogleFonts.montserrat(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
