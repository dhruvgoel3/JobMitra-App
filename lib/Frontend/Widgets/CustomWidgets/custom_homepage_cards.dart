import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCards {
  static CustomHomeCards({
    required String JobTitle,
    required String Name,
    required String Location,
    required String Salary,
    required String Image,
    required String WorkDuration,
    required String rating,
  }) {
    return Container(
      height: 160,
      width: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black, width: 1.5)),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text(
                    JobTitle,
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4e4e4e)),
                  ),
                  Container(
                    height: 1,
                    width: 60,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(width: 10,),
              Text(
                Salary,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color(0xff66a967)),
              ),
              SizedBox(width: 40,),
              Text(rating,style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Color(0xff6b747c)),),



            ],
          ),
          Text(Name),
          Text(Location),
          Text(WorkDuration),
        ],
      ),
    );
  }
}
