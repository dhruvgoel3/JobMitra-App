import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/Frontend/MainAppUi/Hiring_Interface/ContractorsPage/search_section.dart';
import 'package:laborlane/Frontend/Widgets/CustomWidgets/contractor_page_cards.dart';
import 'package:laborlane/Frontend/Widgets/CustomWidgets/custom_contractor_groups.dart';


class ContractorsScrean extends StatefulWidget {
  const ContractorsScrean({super.key});

  @override
  State<ContractorsScrean> createState() => _ContractorsScreanState();
}

class _ContractorsScreanState extends State<ContractorsScrean> {
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
          "Contractors",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600, fontSize: 23, color: Colors.black),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
            ContractorCards().CustomContractorCards(
                ContractorName: "DMC Housing",
                rating: "4.5",
                image: Image.asset(
                  "assets/images/images 3.png",
                  height: 100,
                )),
            ContractorCards().CustomContractorCards(
                ContractorName: "TATA Housing",
                rating: "4.5",
                image: Image.asset(
                  "assets/images/images 5.png",
                  height: 100,
                )),
            ContractorCards().CustomContractorCards(
                ContractorName: "BIRLA Housing",
                rating: "4.5",
                image: Image.asset(
                  "assets/images/images 3.png",
                  height: 100,
                )),
          ],
        ),
      ),
    );
  }
}
// done