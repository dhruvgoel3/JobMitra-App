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
    required String Experience,
  }) {
    return Container(
        height: 111,
        width: 373,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black, width: 1)),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 6),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Text(
                        JobTitle,
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff4e4e4e)),
                      ),
                      Container(
                        height: 1,
                        width: 65,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  Salary,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xff66a967)),
                ),
                SizedBox(
                  width: 130,
                ),
                Text(
                  rating,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xff6b747c)),
                ),
                Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                  size: 20,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/Google.png"),
                radius: 23,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      Name,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      Experience,
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6b747c)),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      height: 20,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen.shade50,
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                          child: Text(
                        "BOOK",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, color: Colors.green),
                      )),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.black,
                      size: 30,
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.black,
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      WorkDuration,
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6b747c)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.blueGrey,
                      size: 20,
                    ),
                    Text(
                      Location,
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6b747c)),
                    ),
                  ],
                ),
              ],
            ),
          ])
        ]));
  }
}
