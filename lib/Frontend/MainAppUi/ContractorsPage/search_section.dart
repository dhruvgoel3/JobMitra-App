import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/CustomWidgets/custom_contractor_groups.dart';
import '../../Widgets/CustomWidgets/jobs_category.dart';

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
    return Card(
        child: Container(
      height: height * 0.43,
      width: double.infinity,
      color: Colors.white,
      child: Column(children: [
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
              Icon(Icons.arrow_drop_down, color: Colors.black),
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
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: height * 0.319, top: 10),
              child: Text("Groups",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.black)),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ContractorGroups().CustomContractorsGroup(
                        GropupImage: Image.asset("assets/images/images 1.png"),
                        Tittle: "Electrition"),
                    SizedBox(width: 10),
                    ContractorGroups().CustomContractorsGroup(
                        GropupImage: Image.asset("assets/images/pg 1.png"),
                        Tittle: "Plumber"),
                    SizedBox(width: 10),
                    ContractorGroups().CustomContractorsGroup(
                        GropupImage: Image.asset("assets/images/images 1.png"),
                        Tittle: "Carpenter"),
                    SizedBox(width: 10),
                    ContractorGroups().CustomContractorsGroup(
                        GropupImage: Image.asset("assets/images/pg 1.png"),
                        Tittle: "Carpenter"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
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
        )
      ]),
    ));
  }
}
