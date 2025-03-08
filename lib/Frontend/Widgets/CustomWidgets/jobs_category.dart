import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobsCategory {
  static CustomJobContainers({
    required String JobTitle,
    required Color color,
    required Color textColor,
  }) {
    return Container(
      height: 33,
      width: 105,
      child: Center(
        child: Text(
          JobTitle,
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 17,color: textColor),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: color,
      ),
    );
  }
}
