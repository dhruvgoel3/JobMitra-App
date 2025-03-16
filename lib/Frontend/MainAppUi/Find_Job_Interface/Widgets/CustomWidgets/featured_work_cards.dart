import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedWork {
  static Widget CustomFeaturedWorkCard({
    required Image image,
    required String JobTitle,
    required String CompanyName,
    required String Salary,
    required String Experience,
    required String WorkLocation,
    required String WorkDuration,
    required VoidCallback ontap,
  }) {
    return Card(
        child: Container(
      height: 220,
      width: 280,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 0.5)),
      child: Column(
        children: [
          ListTile(
            leading: image,
            title: Text(
              JobTitle,
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black),
            ),
            subtitle: Text(
              CompanyName,
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Colors.blueGrey),
            ),
            trailing: const Icon(
              Icons.favorite_outline_sharp,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const SizedBox(width: 20),
              Container(
                height: 25,
                width: 110,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                    child: Text(
                  Salary,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black),
                )),
              ),
              const SizedBox(width: 12),
              Container(
                height: 25,
                width: 110,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                    child: Text(
                  Experience,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black),
                )),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const SizedBox(width: 20),
              Container(
                height: 25,
                width: 110,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                    child: Text(
                  WorkLocation,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black),
                )),
              ),
              const SizedBox(width: 12),
              Container(
                height: 25,
                width: 110,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                    child: Text(
                  WorkDuration,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black),
                )),
              ),
            ],
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: ontap,
            child: Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                  color: const Color(0xFFF2A160),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Apply Now",
                style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )),
            ),
          ),
        ],
      ),
    ));
  }

  static Widget CustomRecomendedJobsCard({
    required Image image,
    required String JobTitle,
    required String CompanyName,
    required String Salary,
    required String Experience,
    required String WorkLocation,
    required String WorkDuration,
    required VoidCallback ontap,
  }) {
    return Card(
        child: Container(
      height: 120,
      width: 350,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 0.5)),
      child: Column(
        children: [
          ListTile(
            leading: image,
            title: Text(
              JobTitle,
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black),
            ),
            subtitle: Text(
              CompanyName,
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Colors.blueGrey),
            ),
            trailing: const Icon(
              Icons.favorite_outline_sharp,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const SizedBox(width: 20),
              Container(
                height: 25,
                width: 110,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                    child: Text(
                  Salary,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black),
                )),
              ),
              const SizedBox(width: 12),
              Container(
                height: 25,
                width: 110,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                    child: Text(
                  Experience,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black),
                )),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
