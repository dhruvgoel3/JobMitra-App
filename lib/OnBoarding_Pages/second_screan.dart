import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/Widgets/round_button.dart';

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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100,vertical:50),
                  child: Container(
                      color: Colors.black,
                      child: Image.asset(
                        "assets/images/tools-removebg-preview.png",
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 155.0, top: 20),
                  child: Image.asset(
                    "assets/images/Working_with_a_chainsaw__1_-removebg-preview.png",
                    height: 112,
                    width: 158,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Your perfect workers",
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
              Padding(
                padding: const EdgeInsets.only(right: 28.0),
                child: Image.asset(
                    "assets/images/Builder's tools and hard hat.png"),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Image.asset("assets/images/Page Control.png"),
          RoundButton(title: "GET STARTED", onTap: () {})
        ],
      ),
    ));
  }
}
