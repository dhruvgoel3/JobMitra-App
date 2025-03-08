import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/Frontend/Widgets/CustomWidgets/jobs_category.dart';

class SearchJobsSection extends StatefulWidget {
  const SearchJobsSection({super.key});

  @override
  State<SearchJobsSection> createState() => _SearchJobsSectionState();
}

class _SearchJobsSectionState extends State<SearchJobsSection> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      child: Container(
        height: 190,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.blueGrey,
                  ),
                  Text(
                    "Mullana,Ambala",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6b747c)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 43,
              width: 335,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                cursorColor: Colors.black,
                cursorHeight: 18,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  suffixIcon: Icon(CupertinoIcons.slider_horizontal_3),
                  iconColor: Colors.black,
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  hintText: "Search...",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(right: width * 0.55),
              child: Text(
                "Categories",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    JobsCategory.CustomJobContainers(
                        JobTitle: "Plumber",
                        color: Color(0xFFF2A160),
                        textColor: Colors.white),
                    SizedBox(width: 5),
                    JobsCategory.CustomJobContainers(
                        JobTitle: "Electrition",
                        color: Color(0xfff5d6b1),
                        textColor: Colors.black),
                    SizedBox(width: 5),
                    JobsCategory.CustomJobContainers(
                        JobTitle: "Carpenter",
                        color: Color(0xfff5d6b1),
                        textColor: Colors.black),
                    SizedBox(width: 5),
                    JobsCategory.CustomJobContainers(
                        JobTitle: "Painter",
                        color: Color(0xfff5d6b1),
                        textColor: Colors.black),
                    SizedBox(width: 5),
                    JobsCategory.CustomJobContainers(
                        JobTitle: "Mistri",
                        color: Color(0xfff5d6b1),
                        textColor: Colors.black),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
