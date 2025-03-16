import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/Frontend/MainAppUi/Find_Job_Interface/ChatPage/chat_page.dart';
import 'package:laborlane/Frontend/MainAppUi/Find_Job_Interface/HomePage/home_page.dart';
import 'package:laborlane/Frontend/MainAppUi/Find_Job_Interface/MakeTeamPage/make_team_page.dart';
import 'package:laborlane/Frontend/MainAppUi/Find_Job_Interface/UserProfilePage/user_profile_page.dart';

class UserBottomNavbar extends StatefulWidget {
  const UserBottomNavbar({super.key});

  @override
  State<UserBottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<UserBottomNavbar> {
  final PageController _pageViewController = PageController();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageViewController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          UserHomePage(),
          MakeTeamPage(),
          ChatPage(),
          UserProfilePage(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Color(0xFF264552),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: BottomNavigationBar(
            unselectedLabelStyle:
                GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
            selectedLabelStyle:
                GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w600),
            backgroundColor: Color(0xFF264552),
            selectedItemColor: Color(0xFFF2A160),
            unselectedItemColor: Colors.white,
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
              _pageViewController.jumpToPage(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  size: 28,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.groups, size: 28), label: 'Make Team'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message, size: 28), label: 'Messgaes'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle, size: 28), label: 'Profile'),
            ]),
      ),
    );
  }
}
