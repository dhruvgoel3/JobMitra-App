import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
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
          "Your Profile",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600, fontSize: 23, color: Colors.black),
        ),
        titleSpacing: 3,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.gpp_good)
          )
        ],
      ),
      body: Column(
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
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.amber,size: 20,),
                                Icon(Icons.star,color: Colors.amber,size: 20,),
                                Icon(Icons.star,color: Colors.amber,size: 20,),
                                Icon(Icons.star,color: Colors.amber,size: 20,),
                                SizedBox(width: 5,),
                                Text(
                                  "4.1 (440 reviews)",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: Colors.grey),
                                ),

                              ],
                            ),
                            Text(
                              "+91-9857385898",
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
        ],
      ),
    );
  }
}
