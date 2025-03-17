import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextfieldsPart extends StatefulWidget {
  const TextfieldsPart({super.key});

  @override
  State<TextfieldsPart> createState() => _TextfieldsPartState();
}

class _TextfieldsPartState extends State<TextfieldsPart> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedValue; // Stores the selected dropdown value
  List<String> Jobitems = [
    "Electrician",
    "Plumber",
    "Mistri",
    "Carpenter",
    "Painter"
  ];
// Dropdown item
  @override
  Widget build(BuildContext context) {
    final UserNameConroller = TextEditingController();
    final TeamMemberController = TextEditingController();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.062, top: height * 0.02),
      child: Column(
        children: [
          Container(
            height: 45,
            width: 335,
            decoration: BoxDecoration(
                color: Color(0xfff5d6b1),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0, -5),
                      blurRadius: 4)
                ]),
            child: TextFormField(
              cursorColor: Colors.black,
              cursorHeight: 18,
              controller: UserNameConroller,
              decoration: InputDecoration(
                hintText: "Team Name",
                iconColor: Colors.black,
                hintStyle: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            width: 335,
            decoration: BoxDecoration(
              color: Color(0xfff5d6b1),
              borderRadius:
                  BorderRadius.circular(8), // Slightly rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 3),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10), // Added padding
              child: DropdownButtonFormField<String>(
                value: _selectedValue, // Ensure this is initialized properly
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  hintText: "Select Job Category",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54, // Better contrast
                  ),
                ),
                items: Jobitems.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValue = newValue ?? ""; // Prevents null assignment
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please select a job category"; // More relevant message
                  }
                  return null;
                },
                icon: Icon(Icons.arrow_drop_down,
                    color: Colors.black87), // Improved visibility
                dropdownColor: Colors.white60,
                // Ensures dropdown is visible properly
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 45,
            width: 335,
            decoration: BoxDecoration(
                color: Color(0xfff5d6b1),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0, -5),
                      blurRadius: 4)
                ]),
            child: TextFormField(
              cursorColor: Colors.black,
              cursorHeight: 18,
              controller: TeamMemberController,
              decoration: InputDecoration(
                hintText: "Number of members",
                iconColor: Colors.black,
                hintStyle: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 45,
            width: 335,
            decoration: BoxDecoration(
                color: Color(0xfff5d6b1),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0, -5),
                      blurRadius: 4)
                ]),
            child: TextFormField(
              cursorColor: Colors.black,
              cursorHeight: 18,
              controller: TeamMemberController,
              decoration: InputDecoration(
                hintText: "Location",
                iconColor: Colors.black,
                suffixIcon: Icon(Icons.location_on,color: Colors.grey,),
                hintStyle: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
