import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScrean extends StatefulWidget {
  const ProfileScrean({super.key});

  @override
  State<ProfileScrean> createState() => _ProfileScreanState();
}

class _ProfileScreanState extends State<ProfileScrean> {
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
            Container(
              height: 165,
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
                              Row(
                                children: [
                                  Text(
                                    "Kajal Sehwal",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 21,
                                        color: Colors.black),
                                  ),
                                  Icon(
                                    Icons.verified,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                ],
                              ),
                              Text(
                                "+91-906736448",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Colors.grey),
                              ),
                              Text(
                                "kajalsehwal9834@gmail.com",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Colors.grey),
                              ),
                              Text(
                                "500+ Hired  |  4.5 Rating",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Card(
              child: Container(
                color: Colors.white,
                height: 120,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        CupertinoIcons.heart_fill,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Wishlist",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.people_rounded,
                        color: Colors.black,
                      ),
                      title: Text(
                        "My Workers",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  "Wallet",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 18,
                ),
              ),
            ),
            Card(
              color: Colors.white,
              child: Container(
                height: 230,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 235.0, top: 10),
                      child: Text(
                        "My Activity",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.reviews,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Reviews",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.question_answer_outlined,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Questions & Answers",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.history,
                        color: Colors.black,
                      ),
                      title: Text(
                        "History",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
