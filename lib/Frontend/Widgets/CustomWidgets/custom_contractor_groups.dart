import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContractorGroups {
  CustomContractorsGroup({
    required Image GropupImage,
    required String Tittle,
  }) {
    return Container(
      height: 110,
      width: 110,
      decoration: BoxDecoration(
        color: Color(0xfffae9d0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          GropupImage,
          SizedBox(
            height: 8,
          ),
          Container(
            height: 35,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Center(
              child: Text(Tittle,
                  style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
