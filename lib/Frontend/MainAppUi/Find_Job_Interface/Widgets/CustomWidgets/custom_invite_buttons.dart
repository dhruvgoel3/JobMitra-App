import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InviteButton {
  static CustomInviteButton({
    required String Tittle,
    required Icon icon,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Container(
        height: 45,
        width: 335,
        child: Padding(
          padding: const EdgeInsets.only(left: 55.0),
          child: Row(
            children: [
              icon,
              SizedBox(
                width: 15,
              ),
              Text(
                Tittle,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 18),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
