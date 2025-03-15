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
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Row(
          children: [
            SizedBox(width: 10,),
            image,
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,),
                  child: Row(
                    children: [
                      Text(ContractorName,style: GoogleFonts.inter(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black),),
                      SizedBox(width: 40),
                      Text(rating),
                    ],
                  ),
                ),
                Text("500+"),
                Row(
                  children: [
                    Text("Projects"),
                    Icon(Icons.home,color: Colors.amber,)
                  ],
                ),
                Container(
                  height: 20,
                  width: 115,
                  decoration: BoxDecoration(
                      color: Colors.lightGreen.shade50,
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                      child: Text(
                        "Book your slot",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, color: Colors.green),
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
