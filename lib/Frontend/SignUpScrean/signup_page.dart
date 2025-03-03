import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:laborlane/Frontend/LoginScrean/login_screan.dart';
import 'package:laborlane/Frontend/Widgets/CustomWidgets/custom_widgets.dart';
import 'package:laborlane/Frontend/Widgets/round_button.dart';
import 'package:laborlane/Frontend/Widgets/textfields.dart';

import '../../Services/Auth Services/auth_services.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.05, top: height * 0.13),
              child: Image.asset(
                  "assets/images/worker_with_ladder-removebg-preview.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.04, top: height * 0.4),
              child: Column(
                children: [
                  CustomWidgets.CustomTextfield(
                      label: "Username",
                      text: "Username",
                      icon: Icons.perm_identity,
                      controller: nameController),
                  SizedBox(
                    height: 15,
                  ),
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
                      icon: CupertinoIcons.lock,
                      controller: passwordController),
                  SizedBox(
                    height: 15,
                  ),
                  CustomWidgets.CustomTextfield(
                      label: "Confirm Password",
                      text: "Confirm Password",
                      icon: CupertinoIcons.lock,
                      controller: confirmpasswordController),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.7, left: width * 0.055),
              child: RoundButton(
                title: "Sign Up",
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    AuthService()
                        .AccountwithEmail(
                            emailController.text, passwordController.text)
                        .then((value) {
                      if (value == 'Account Created') {
                        Get.snackbar('', 'Account Created');
                        Get.to(() => LoginScrean());
                      } else {
                        Get.snackbar("Error", value);
                      }
                    });
                  } // Corrected navigation
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
