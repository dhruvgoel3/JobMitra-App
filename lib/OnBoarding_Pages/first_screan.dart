import 'package:flutter/material.dart';
import 'package:laborlane/Widgets/round_button.dart';
import 'package:laborlane/Widgets/textfields.dart';

class FirstScrean extends StatelessWidget {
  const FirstScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: RoundButton(title: "GET STARTED", onTap: () {})),
          SizedBox(height: 20,),
          Textfields(controller: TextEditingController(), icon: Icon(Icons.label), text: "Username", tohide: false)
        ],
      ),
    );
  }
}
