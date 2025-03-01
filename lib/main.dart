import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:laborlane/OnBoarding_Pages/first_screan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: FirstScrean(),
    );
  }
}
// jobMitra
