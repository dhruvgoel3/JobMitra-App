import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/Frontend/User_Role_Pages/select_user_role.dart';
import '../Widgets/round_button.dart';

class SecondScrean extends StatelessWidget {
  SecondScrean({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: height * 1,
      width: width * 1,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xfff7cda5), Color(0xfffaecd4)])),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Container(
                    child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.8, top: width * 0.45),
                  child: Image.asset(
                    "assets/images/tools-removebg-preview.png",
                  ),
                )),
                Image.asset(
                  "assets/images/Working_with_a_chainsaw__1_-removebg-preview.png",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.12),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: height * 0.015),
                        child: Image.asset(
                          "assets/images/Group 12.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text("Connecting workers to",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          )),
                      Text("Jobs Seamlessly",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.099),
                  child: Container(
                    height: 100,
                    child: Image.asset(
                      "assets/images/Builder's tools and hard hat.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Image.asset("assets/images/Page Control.png"),
          RoundButton(title: "GET STARTED", onTap: () {Get.to(()=>SelectUserRole());})
        ],
      ),
    ));
  }
}
