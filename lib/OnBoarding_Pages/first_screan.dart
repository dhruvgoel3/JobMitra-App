import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/OnBoarding_Pages/second_screan.dart';
import 'package:laborlane/Widgets/round_button.dart';

class FirstScrean extends StatelessWidget {
  FirstScrean({super.key});

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
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: height * 0.1),
                  child: Container(
                    child: Image.asset(
                      "assets/images/saw.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.18, left: 10),
                  child: Container(
                    child: Image.asset(
                      "assets/images/worker with boxes.png",
                      fit: BoxFit.cover,
                    ),
                    height: 300,
                    width: 150,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.26, top: height * 0.5),
                  child: Container(
                    child: Image.asset(
                      "assets/images/wrench.png",
                    ),
                  ),
                )
              ],
            ),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.12,
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/Group 12.png",
                        fit: BoxFit.cover,
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
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: height*0.099),
                    child: Container(

                      height: 100,
                      child: Image.asset(
                          "assets/images/Builder's tools and hard hat.png",fit: BoxFit.cover,),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Image.asset("assets/images/Page Control.png"),
            SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: RoundButton(
                  title: "GET STARTED",
                  onTap: () {
                    Get.to(() => SecondScrean());
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
// done
// nicee
