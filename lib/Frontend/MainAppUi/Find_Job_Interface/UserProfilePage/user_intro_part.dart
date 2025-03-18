import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserIntroPart extends StatelessWidget {
  const UserIntroPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: Card(
        shadowColor: Colors.black,
        borderOnForeground: true,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.blueGrey,
                  ),
                  Text(
                    "Mullana,Ambala",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6b747c)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/images 1.png",
                  ),
                  radius: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rahul Sharma",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 21,
                            color: Colors.black),
                      ),
                      Text(
                        "Electrician",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                      Text(
                        "+91-9857385898",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 22,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue.withOpacity(0.2)),
                            child: Center(
                              child: Text(
                                "5+ Years",
                                style: GoogleFonts.inter(
                                    color: Colors.blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 22,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green.withOpacity(0.2)),
                            child: Center(
                              child: Text(
                                "Available",
                                style: GoogleFonts.inter(
                                    color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
