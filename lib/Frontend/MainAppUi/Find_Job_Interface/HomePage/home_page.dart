import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/Frontend/MainAppUi/Find_Job_Interface/HomePage/search_section.dart';
import 'package:laborlane/Frontend/MainAppUi/Find_Job_Interface/Widgets/CustomWidgets/featured_work_cards.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({super.key});

  @override
  State<UserHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        backgroundColor: Color(0xfffae9d0),
        leading: Image.asset("assets/images/ph_list-bold.png", height: 20),
        title: Text(
          "JobMitra",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w800, fontSize: 26, color: Colors.black),
        ),
        titleSpacing: 3,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
              "assets/images/mingcute_notification-fill.png",
              height: 27,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.2),
              child: Text(
                "Featured Jobs (Part / Full Time)",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  FeaturedWork.CustomFeaturedWorkCard(
                      image: Image.asset("assets/images/Google.png"),
                      JobTitle: "Electrician",
                      CompanyName: "BuildTech Solutions",
                      Salary: "5560/-Month",
                      Experience: "1+ yrs exp",
                      WorkLocation: "Mumbai",
                      WorkDuration: "3 Months",
                      ontap: () {}),
                  FeaturedWork.CustomFeaturedWorkCard(
                      image: Image.asset("assets/images/Google.png"),
                      JobTitle: "Plumber",
                      CompanyName: "Jai Solutions",
                      Salary: "10k/-Month",
                      Experience: "non",
                      WorkLocation: "Haryana",
                      WorkDuration: "2 Months",
                      ontap: () {}),
                  FeaturedWork.CustomFeaturedWorkCard(
                      image: Image.asset("assets/images/Google.png"),
                      JobTitle: "Carpenter",
                      CompanyName: "Shrine Solutions",
                      Salary: "10k/-Month",
                      Experience: "non",
                      WorkLocation: "Haryana",
                      WorkDuration: "2 Months",
                      ontap: () {}),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.44),
              child: Text(
                "Recommended Jobs",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                SizedBox(
                  width: 15,
                ),
                FeaturedWork.CustomRecomendedJobsCard(
                    image: Image.asset("assets/images/Google.png"),
                    JobTitle: "Plumbing Technician",
                    CompanyName: "WaterPro Services",
                    Salary: "\$22/hour",
                    Experience: "2+ yrs exp",
                    WorkLocation: "Banglore",
                    WorkDuration: "3 months",
                    ontap: () {}),
                FeaturedWork.CustomRecomendedJobsCard(
                    image: Image.asset("assets/images/Google.png"),
                    JobTitle: "Plumbing Technician",
                    CompanyName: "WaterPro Services",
                    Salary: "\$22/hour",
                    Experience: "2+ yrs exp",
                    WorkLocation: "Banglore",
                    WorkDuration: "3 months",
                    ontap: () {}),
                FeaturedWork.CustomRecomendedJobsCard(
                    image: Image.asset("assets/images/Google.png"),
                    JobTitle: "Plumbing Technician",
                    CompanyName: "WaterPro Services",
                    Salary: "\$22/hour",
                    Experience: "2+ yrs exp",
                    WorkLocation: "Banglore",
                    WorkDuration: "3 months",
                    ontap: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
