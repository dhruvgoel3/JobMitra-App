import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/Frontend/Widgets/bottom_nav_bar.dart';

class CustomWidgets {
  static CustomTextfield(
      {required String label,
      required String text,
      required IconData icon,
      required controller}) {
    return Container(
      height: 43,
      width: 335,
      decoration: BoxDecoration(
          // gradient: LinearGradient(
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter,
          //     colors: [Colors.black38.withOpacity(0.3), Color(0xfff5d6b1)],tileMode: TileMode.clamp,stops: [0.0,0.2]),
          color: Color(0xfff5d6b1),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0, -5),
                blurRadius: 4)
          ]),
      child: TextFormField(
        cursorColor: Colors.black,
        cursorHeight: 18,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          iconColor: Colors.black,
          hintStyle: GoogleFonts.poppins(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
          hintText: text,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return label;
          }
          return null;
        },
      ),
    );
  }

  static CustomSignUpGoogleButton() {
    return InkWell(
      onTap: () {
        Get.to(() => BottomNavbar());
      },
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: Row(
            children: [
              Image.asset("assets/images/Google.png"),
              SizedBox(width: 15),
              Text(
                "Continue with Google",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )
            ],
          ),
        ),
        height: 40,
        width: 330,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }

  static CustomSignUpPhoneButton() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          children: [
            Icon(
              Icons.phone,
              size: 25,
              color: Colors.black,
            ),
            SizedBox(width: 15),
            Text(
              "Continue with Phone",
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            )
          ],
        ),
      ),
      height: 40,
      width: 270,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }
}
//done