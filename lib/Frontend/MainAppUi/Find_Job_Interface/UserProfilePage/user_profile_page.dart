import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/Frontend/MainAppUi/Find_Job_Interface/UserProfilePage/user_intro_part.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
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
          "Your Profile",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600, fontSize: 23, color: Colors.black),
        ),
        titleSpacing: 3,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.share,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserIntroPart(),
            SizedBox(
              height: 5,
            ),
            ListTile(
              tileColor: Colors.grey.withOpacity(0.1),
              title: Text(
                "Daily rate",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 15),
              ),
              subtitle: Text(
                "\$50/day",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 19),
              ),
              trailing: Container(
                width: 130,
                height: 30,
                child: Center(
                  child: Text(
                    "Explore Jobs",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(0xFFF2A160),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.grey.withOpacity(0.1),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "4.8",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 17),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          "Rating",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Container(
                      height: 60,
                      width: 0.5,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Column(
                      children: [
                        Text(
                          "120",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 17),
                        ),
                        Text(
                          "Jobs Done",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Container(
                      height: 60,
                      color: Colors.grey,
                      width: 0.5,
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Column(
                      children: [
                        Text(
                          "5+",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 17),
                        ),
                        Text(
                          "Years",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 160, top: 15),
              child: Text(
                "Skills and Expertise",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Row(children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 22,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.15),
                    ),
                    child: Center(
                      child: Text(
                        "Wiring",
                        style: GoogleFonts.inter(
                            color: Colors.black,
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
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.15),
                    ),
                    child: Center(
                      child: Text(
                        "Circuit Repair",
                        style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Row(children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 22,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.15),
                    ),
                    child: Center(
                      child: Text(
                        "Industrial Maintenence",
                        style: GoogleFonts.inter(
                            color: Colors.black,
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
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.15),
                    ),
                    child: Center(
                      child: Text(
                        "Pannel Installation",
                        style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210, top: 15),
              child: Text(
                "Work Portfolio",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/images/IMG@1x.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/images/IMG@1x (1).png"),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/images/IMG@1x.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 260, top: 15),
              child: Text(
                "Reviews",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
