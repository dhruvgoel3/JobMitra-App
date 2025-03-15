import 'package:flutter/material.dart';
class ContractorCards
{
  CustomContractorCards({
    required String ContractorName,
    required String rating,
    required Image image,
})
  {
    return Container(
      height: 100,
      width: 335,
      decoration: BoxDecoration(
        color: Colors.black
      ),

    );
  }
}
