import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/Frontend/MainAppUi/Find_Job_Interface/HomePage/search_section.dart';

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
      body: Column(
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
        ],
      ),
    );
  }
}
