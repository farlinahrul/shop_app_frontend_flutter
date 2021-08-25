import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/theme/PaletteColor.dart';

class TypographyStyle {
  static TextStyle primaryTextStyle =
      GoogleFonts.poppins(color: PaletteColor.primaryTextColor);

  static TextStyle purpleTextColor =
      GoogleFonts.poppins(color: PaletteColor.primaryColor);

  static TextStyle titleTextProductStyle =
      GoogleFonts.poppins(color: PaletteColor.titleTextProductBlack);

  static TextStyle titleTextProductWhitetStyle =
  GoogleFonts.poppins(color: PaletteColor.bgColor5);

  static TextStyle priceTextStyle =
      GoogleFonts.poppins(color: PaletteColor.priceColor);

  static TextStyle subtitleTextStyle = GoogleFonts.poppins(
    color: PaletteColor.subtitleTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
