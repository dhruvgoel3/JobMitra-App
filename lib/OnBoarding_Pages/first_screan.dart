import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/OnBoarding_Pages/second_screan.dart';
import 'package:laborlane/Widgets/round_button.dart';
import 'package:laborlane/Widgets/textfields.dart';

class FirstScrean extends StatelessWidget {
  const FirstScrean({super.key});

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
              padding: const EdgeInsets.only(right: 319, top: 140),
              child: Container(
                height: 70,
                  width: 70,

                  child: Image.asset("assets/images/saw.png",fit: BoxFit.cover,)),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 148, left: 90),
              child: Container(
                height: height * 0.38,
                width: width * 0.43,

                child: Image.asset(
                  "assets/images/worker with boxes.png",height: 100,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => SecondScrean());
                },
                child: Icon(
                  Icons.near_me,
                  size: 40,
                )),

            // Padding(
            //   padding: const EdgeInsets.only(),
            //   child: Container(
            //     height: 113,
            //     width: 160,
            //     decoration: BoxDecoration(color: Colors.white),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(bottom: 28.0),
            //   child: Row(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.symmetric(
            //           horizontal: 38.0,
            //         ),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text("Connecting workers to",
            //                 style: GoogleFonts.poppins(
            //                   color: Colors.black,
            //                   fontWeight: FontWeight.w600,
            //                   fontSize: 16,
            //                 )),
            //             Text("Jobs Seamlessly",
            //                 style: GoogleFonts.poppins(
            //                     color: Colors.black,
            //                     fontWeight: FontWeight.w600,
            //                     fontSize: 16)),
            //           ],
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(right: 28.0),
            //         child: Image.asset(
            //             "assets/images/Builder's tools and hard hat.png"),
            //       )
            //       // Padding(
            //       //   padding: const EdgeInsets.only(bottom: 100.0),
            //       //   child: Container(
            //       //     height: 121,
            //       //     width: 97,
            //       //     child: Image.asset(
            //       //         "assets/images/Builder's tools and hard hat.png",),
            //       //
            //       //   ),
            //       // ),
            //     ],
            //   ),
            // ),

            // RoundButton(title: "Get Statrted", onTap: () {})
          ],
        ),
      ),
    );
  }
}
// ElevatedButton(onPressed: (){}, child: Icon(Icons.near_me,size: 40,)),
// RoundButton(title: "Get Statrted", onTap: () {})
