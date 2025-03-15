import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContractorCards {
  CustomContractorCards({
    required String ContractorName,
    required String rating,
    required Image image,
  }) {
    return Card(
      child: Container(
        height: 120,
        width: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            image,
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        ContractorName,
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(width: 30),
                      Text(
                        rating,
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 120),
                  child: Text(
                    "500+",
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.green),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Projects",
                      style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 79.0),
                      child: Icon(
                        Icons.home,
                        color: Colors.amber,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 25,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.lightGreen.shade50.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                      child: Text(
                    "Book your slot",
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.green),
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
