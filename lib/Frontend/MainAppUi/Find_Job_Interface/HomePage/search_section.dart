import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Widgets/CustomWidgets/jobs_category.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: width * 0.06, top: 7, bottom: 5),
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
        Card(
            color: Colors.white,
            child: Container(
              height: height * 0.18,
              width: width * 1,
              child: Column(
                children: [
                  Container(
                    height: 43,
                    width: 340,
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
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.36),
                    child: Text(
                      "Match your category",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17.0, right: 17),
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
            )),
      ],
    );
  }
}
