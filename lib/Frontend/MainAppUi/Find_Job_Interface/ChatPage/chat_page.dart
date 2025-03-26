import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Hiring_Interface/MessagesPage/chats_listview.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
          "Messages",
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
            Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Container(
                    height: height * 0.09,
                    width: width * 1,
                    child: Column(
                      children: [
                        Container(
                          height: 43,
                          width: 335,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            cursorColor: Colors.black,
                            cursorHeight: 18,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search_rounded),
                              suffixIcon:
                                  Icon(CupertinoIcons.slider_horizontal_3),
                              iconColor: Colors.black,
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                              hintText: "Search...",
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 4),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(right: width * 0.72),
              child: Text(
                "Recent",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            ChatsListview(),
          ],
        ),
      ),
    );
  }
}
