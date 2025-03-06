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
      height: 160,
      width: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black, width: 1.5)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 6),
            child: Row(
              children: [
                Column(
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
                  width: 150,
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
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/Google.png"),
              radius: 25,
            ),
            title: Row(
              children: [
                Text(Name),
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
                SizedBox(width: 30,),


              ],
            ),
          ),
          Text(Name),
          Text(Location),
          Text(WorkDuration),
        ],
      ),
    );
  }
}
