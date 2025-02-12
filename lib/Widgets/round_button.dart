import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const RoundButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height * 0.05,
        width: width * 0.88,
        decoration: BoxDecoration(
          color: Color(0xfff2a160),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(3, 3)
            )
          ]

        ),
        child: Center(
          child: Text(
            title,
            style:GoogleFonts.poppins(fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 24),
          ),
        ),
      ),
    );
  }
}
// done
// donee

