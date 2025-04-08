import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../MainAppUi/Hiring_Interface/ContractorsPage/contractors_screan.dart';
import '../MainAppUi/Hiring_Interface/HomePage/home_page.dart';
import '../MainAppUi/Hiring_Interface/MessagesPage/messages_screan.dart';
import '../MainAppUi/Hiring_Interface/ProfilePage/profile_screan.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
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
          HomePage(),
          ContractorsScrean(),
          MessagesScrean(),
          ProfileScrean(),
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
                  icon: Icon(Icons.home_work_sharp, size: 28),
                  label: 'Contractors'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message, size: 28), label: 'Messgaes'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle, size: 28), label: 'Profile'),
            ]),
      ),
    );
  }
}
// Bottom nav bar of our app
