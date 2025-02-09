import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScrean extends StatelessWidget {
  const LoginScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.black,
                child: Image.asset("assets/images/Working with a chainsaw.png"),
              ),
              Column(
                children: [
                  Text(
                    "Sign Up",
                    style: GoogleFonts.inter(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Create your account",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
