import 'package:flutter/material.dart';
import 'package:laborlane/Widgets/round_button.dart';
import 'package:laborlane/Widgets/textfields.dart';

class FirstScrean extends StatelessWidget {
  const FirstScrean({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
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
                  child: Image.asset("assets/images/saw.png"),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Image.asset(
                    "assets/images/worker with boxes.png",
                    height: 380,
                    width: 161,
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(),
                //   child: Container(
                //     height: 113,
                //     width: 160,
                //     decoration: BoxDecoration(color: Colors.white),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 28.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 38.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Connecting workers to",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            Text(
                              "Jobs Seamlessly",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 28.0),
                        child: Image.asset(
                            "assets/images/Builder's tools and hard hat.png"),
                      )
                      // Padding(
                      //   padding: const EdgeInsets.only(bottom: 100.0),
                      //   child: Container(
                      //     height: 121,
                      //     width: 97,
                      //     child: Image.asset(
                      //         "assets/images/Builder's tools and hard hat.png",),
                      //
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          RoundButton(title: "Get Statrted", onTap: (){})
        ],
      ),
    );
  }
}
