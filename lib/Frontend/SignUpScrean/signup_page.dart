import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laborlane/Frontend/Widgets/CustomWidgets/custom_widgets.dart';
import 'package:laborlane/Frontend/Widgets/textfields.dart';

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
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/worker_with_ladder-removebg-preview.png"),
          Padding(
            padding: EdgeInsets.only(left: width * 0.04, top: height * 0.3),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
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
        ],
      ),
    );
  }
}
