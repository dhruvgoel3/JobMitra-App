import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/Frontend/MainAppUi/Find_Job_Interface/Widgets/bottom_navigation_bar.dart';
import 'package:laborlane/Frontend/SignUpScrean/signup_page.dart';
import 'package:laborlane/Frontend/Widgets/round_button.dart';

class SelectUserRole extends StatelessWidget {
  const SelectUserRole({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.05, left: 0),
            child: Image.asset("assets/images/Group 12.png"),
          ),
          Container(
            height: height * 0.5,
            width: width * 1,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Image.asset("assets/images/woman worker at laptop.png"),
                )
              ],
            ),
          ),
          RoundButton(title: "Find a job", onTap: (){Get.to(()=>UserBottomNavbar());}),
          SizedBox(height: 10),
          Text("OR",style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.black),),
          SizedBox(height: 10),
          RoundButton(title: "I want to hire people", onTap: (){Get.to(()=>SignupPage());}),
        ],
      ),
    );
  }
}
