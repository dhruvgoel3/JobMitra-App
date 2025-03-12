import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContractorsScrean extends StatefulWidget {
  const ContractorsScrean({super.key});

  @override
  State<ContractorsScrean> createState() => _ContractorsScreanState();
}

class _ContractorsScreanState extends State<ContractorsScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              fontWeight: FontWeight.w600, fontSize: 25, color: Colors.black),
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
    );
  }
}
