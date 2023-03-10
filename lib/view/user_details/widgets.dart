import 'package:flutter/cupertino.dart';

import '../../Core/colors.dart';
import '../../Core/core.dart';
import '../../model/model.dart';

Padding addressWidget({
  required double screenHeight,
  required double screenWidth,
  required Address address,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 18,
    ),
    child: Container(
      height: screenHeight * 0.2,
      width: screenWidth * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myText(
            color: myGrey!,
            size: 18,
            text: "Address :",
            fontweight: FontWeight.w400,
          ),
          sizedBox5(),
          myText(
            color: myBlack,
            size: 15,
            text: '''${address.city} 
${address.street}
${address.suite}
${address.zipcode}''',
            fontweight: FontWeight.w500,
          ),
        ],
      ),
    ),
  );
}

Padding comapnyDetailsWidget(
    {required double screenHeight,
    required double screenWidth,
    required Company company}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 18,
    ),
    child: Container(
      height: screenHeight * 0.2,
      width: screenWidth * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myText(
            color: myGrey!,
            size: 18,
            text: "Company :",
            fontweight: FontWeight.w400,
          ),
          sizedBox5(),
          myText(
            color: myBlack,
            size: 15,
            text: '''${company.bs} 
${company.catchPhrase}
${company.name}''',
            fontweight: FontWeight.w500,
          ),
        ],
      ),
    ),
  );
}
