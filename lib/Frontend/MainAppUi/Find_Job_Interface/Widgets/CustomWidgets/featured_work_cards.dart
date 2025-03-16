import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class FeaturedWork {
  static CustomFeaturedWorkCard({
    required Image image,
    required String JobTitle,
    required String CompanyName,
    required String Salary,
    required String Experience,
    required String WorkLocation,
    required String WorkDuration,
    required Callback ontap,
  }) {
    return Card(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(color: Colors.black),
          child: Column(
            children: [

            ],
          ),

        )
    );
  }
}
