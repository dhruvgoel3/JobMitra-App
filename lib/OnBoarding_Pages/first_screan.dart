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
                  padding: const EdgeInsets.only(right: 319,top: 140),
                  child: Image.asset("assets/images/saw.png"),
                ),
                Container(
                  height: 380,
                  width: 161,
                  decoration: BoxDecoration(),
                  child: Image.asset("assets/images/worker with boxes.png"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
