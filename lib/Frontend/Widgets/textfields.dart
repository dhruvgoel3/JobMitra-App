// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class Textfields extends StatefulWidget {
//   const Textfields({super.key});
//
//   @override
//   State<Textfields> createState() => _TextfieldsState();
// }
//
// class _TextfieldsState extends State<Textfields> {
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(
//             height: 50,
//           ),
//           Container(
//             height: height * 0.054,
//             width: width * 0.85,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Color(0xfffae9d0),
//                 boxShadow: [
//                   BoxShadow(
//                       color: Colors.black.withOpacity(0.2),
//                       offset: Offset(0, -5),
//                       blurRadius: 4)
//                 ]),
//             child: TextField(
//               cursorColor: Colors.black,
//               cursorHeight: 18,
//               cursorErrorColor: Colors.red,
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                   hintText: "Username",
//                   focusedBorder: InputBorder.none,
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   hintStyle: GoogleFonts.poppins(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.black),
//                   prefixIcon: Icon(
//                     Icons.person,
//                     size: 25,
//                     color: Colors.black,
//                   )),
//             ),
//           ),
//           SizedBox(height: 15),
//           Container(
//             height: height * 0.054,
//             width: width * 0.85,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Color(0xfffae9d0),
//                 boxShadow: [
//                   BoxShadow(
//                       color: Colors.black.withOpacity(0.2),
//                       offset: Offset(0, -5),
//                       blurRadius: 4)
//                 ]),
//             child: TextField(
//               cursorColor: Colors.black,
//               cursorHeight: 18,
//               cursorErrorColor: Colors.red,
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                   hintText: "Email",
//                   focusedBorder: InputBorder.none,
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   hintStyle: GoogleFonts.poppins(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.black),
//                   prefixIcon: Icon(
//                     Icons.email_outlined,
//                     size: 25,
//                     color: Colors.black,
//                   )),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
