import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/Frontend/MainAppUi/Find_Job_Interface/MakeTeamPage/textfields_part.dart';
import 'package:laborlane/Frontend/MainAppUi/Find_Job_Interface/Widgets/CustomWidgets/custom_invite_buttons.dart';

import '../Widgets/CustomWidgets/featured_work_cards.dart';

class MakeTeamPage extends StatefulWidget {
  const MakeTeamPage({super.key});

  @override
  State<MakeTeamPage> createState() => _MakeTeamPageState();
}

class _MakeTeamPageState extends State<MakeTeamPage> {
  @override
  Widget build(BuildContext context) {
    final SearchController = TextEditingController();
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
          "Create a Team",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600, fontSize: 22, color: Colors.black),
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
        child: Column(children: [
          Image.asset(
            "assets/images/team image.png",
            width: width * 0.8,
            height: height * 0.3,
          ),
          TextfieldsPart(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.25),
            child: Text(
              "Add Team Members",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              height: 45,
              width: 335,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(0, -5),
                        blurRadius: 4)
                  ]),
              child: TextFormField(
                cursorColor: Colors.black,
                cursorHeight: 18,
                controller: SearchController,
                decoration: InputDecoration(
                  hintText: "Location",
                  iconColor: Colors.black,
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Column(
              children: [
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
            ),
          ),
          SizedBox(height: 10,),
          InviteButton.CustomInviteButton(Tittle: "Invite Via Whatsap", icon: Icon(Icons.share)),
          SizedBox(height: 20,),
        ]
        ),
      ),
    );
  }
}
