import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/Frontend/MainAppUi/HomePage/home_page.dart';
import 'package:laborlane/Frontend/Widgets/bottom_nav_bar.dart';
import 'package:laborlane/Frontend/Widgets/round_button.dart';

class LoginScrean extends StatelessWidget {
  const LoginScrean({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: height*0.3,left: width*0.38),
            child: Image.asset("assets/images/Working_with_a_chainsaw__1_-removebg-preview.png",height: height*0.23,),
          ),
          Padding(
            padding:  EdgeInsets.only(top: height*0.15,left: width*0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: GoogleFonts.inter(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Back",
                  style: GoogleFonts.inter(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Enter your credential to login",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: height*0.9,left: width*0.07),
            child: RoundButton(title: "Login", onTap: (){Get.to(()=>BottomNavbar());}),
          )
        ],
      ),
    );
  }
}
//login screan
// not completed properly
