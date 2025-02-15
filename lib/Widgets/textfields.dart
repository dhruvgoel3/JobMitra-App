import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textfields extends StatelessWidget {
  final TextEditingController controller;
  final bool tohide;
  final String text;
  final Icon icon;

  const Textfields(
      {super.key,
      required this.controller,
      required this.icon,
      required this.text,
      required this.tohide});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: 50,
      decoration: BoxDecoration(
          color: Color(0xfffae9d0), borderRadius: BorderRadius.circular(7)),
      child: Row(
        children: [
          TextField(
              controller: controller,
              obscureText: tohide,
              decoration: InputDecoration(
                icon: icon,
                iconColor: Colors.black,
                hintText: text,
                hintStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 15,
                ),
              )),
        ],
      ),
    );
  }
}
// Here is the custom textfield
