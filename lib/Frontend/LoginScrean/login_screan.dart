import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laborlane/Frontend/MainAppUi/HomePage/home_page.dart';
import 'package:laborlane/Frontend/SignUpScrean/signup_page.dart';
import 'package:laborlane/Frontend/Widgets/CustomWidgets/custom_widgets.dart';
import 'package:laborlane/Frontend/Widgets/bottom_nav_bar.dart';
import 'package:laborlane/Frontend/Widgets/round_button.dart';

import '../../Utils/utils.dart';

class LoginScrean extends StatefulWidget {
  const LoginScrean({super.key});

  @override
  State<LoginScrean> createState() => _LoginScreanState();
}

class _LoginScreanState extends State<LoginScrean> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    FirebaseAuth _auth = FirebaseAuth.instance;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    bool loading = false;

    void Login() {
      _auth
          .signInWithEmailAndPassword(
              email: emailController.text.toString(),
              password: passwordController.text.toString())
          .then((value) {
        Utils().toastMessage(value.user!.email.toString());
        Get.to(() => BottomNavbar());
        setState(() {
          loading = true;
        });
      }).onError((error, stackTrace) {
        Utils().toastMessage(error.toString());
      });
      setState(() {
        loading = false;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.25, left: width * 0.38),
              child: Image.asset(
                "assets/images/Working_with_a_chainsaw__1_-removebg-preview.png",
                height: height * 0.23,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.1, left: width * 0.07),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: GoogleFonts.inter(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Back",
                    style: GoogleFonts.inter(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Enter your credential to login",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.65, left: width * 0.057),
              child: RoundButton(
                  Loading: loading,
                  title: "Login",
                  onTap: () {
                    Login();
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.5, left: width * 0.06),
              child: Column(
                children: [
                  CustomWidgets.CustomTextfield(
                      label: "Email",
                      text: "Email",
                      icon: Icons.email_outlined,
                      controller: emailController),
                  SizedBox(
                    height: 15,
                  ),
                  CustomWidgets.CustomTextfield(
                      label: "Password",
                      text: "Password",
                      icon: Icons.lock_outlined,
                      controller: passwordController),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.72, left: width * 0.45),
              child: Text(
                "Or",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.77, left: 25),
              child: Column(
                children: [
                  CustomWidgets.CustomSignUpGoogleButton(),
                  SizedBox(height: 15,),
                  CustomWidgets.CustomSignUpPhoneButton()

                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height*0.9,left: width*0.17),
              child: Row(
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => SignupPage());
                      },
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xfff2a160)),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//login screan
// not completed properly
