import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/Widgets/round_button.dart';

class FirstNewScrean extends StatelessWidget {
  FirstNewScrean({super.key});

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
                  padding:  EdgeInsets.only(bottom: height*0.1),
                  child: Container(
                    child: Image.asset(
                      "assets/images/saw.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height*0.18,left: 10),
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
                  padding:  EdgeInsets.only(left:width*0.26,top: height*0.5),
                  child: Container(

                    child: Image.asset("assets/images/wrench.png"),
                  ),
                )
              ],
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: width*0.12,vertical: height*0.033),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                  SizedBox(width: 15,),
                  Container(
                    height: 100,

                    child: Image.asset("assets/images/Builder's tools and hard hat.png"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/Page Control.png"),
            SizedBox(height: 7),
            RoundButton(title: "GET STARTED", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
