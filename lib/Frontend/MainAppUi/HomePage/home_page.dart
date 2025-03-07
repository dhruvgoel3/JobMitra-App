import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/Frontend/Widgets/CustomWidgets/custom_homepage_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          children: [
            CustomCards.CustomHomeCards(JobTitle: "Plumber", Name: "Ramesh", Location: "Mullana", Salary: "(\$12)", Image: "", WorkDuration: "Mon-Sat", rating: "4.5", Experience: "(2 yrs)"),
            SizedBox(height: 17),
            CustomCards.CustomHomeCards(JobTitle: "Plumber", Name: "Ramesh", Location: "Mullana", Salary: "(\$12)", Image: "", WorkDuration: "Mon-Sat", rating: "4.5", Experience: "(2 yrs)"),
            SizedBox(height: 17),

            CustomCards.CustomHomeCards(JobTitle: "Plumber", Name: "Ramesh", Location: "Mullana", Salary: "(\$12)", Image: "", WorkDuration: "Mon-Sat", rating: "4.5", Experience: "(2 yrs)"),
            SizedBox(height: 17),

            CustomCards.CustomHomeCards(JobTitle: "Plumber", Name: "Ramesh", Location: "Mullana", Salary: "(\$12)", Image: "", WorkDuration: "Mon-Sat", rating: "4.5", Experience: "(2 yrs)"),
            SizedBox(height: 17),

            CustomCards.CustomHomeCards(JobTitle: "Plumber", Name: "Ramesh", Location: "Mullana", Salary: "(\$12)", Image: "", WorkDuration: "Mon-Sat", rating: "4.5", Experience: "(2 yrs)"),

          ],
        ),
      ),
    );
  }
}
