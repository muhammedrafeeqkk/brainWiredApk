import 'package:brain_wired_apk/Core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Core/core.dart';

class screenUserDetails extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  const screenUserDetails(
      {super.key, required this.screenHeight, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: screenHeight * 0.7,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: TileGradientColor),
            child: Column(
              children: [
                sizedBox20(),
                myText(
                  color: myBlack,
                  size: 19,
                  text: "Leanne Graham",
                  fontweight: FontWeight.w500,
                ),
                sizedBox5(),
                myText(
                  color: myGrey!,
                  size: 16,
                  text: "@Bret",
                  fontweight: FontWeight.w400,
                ),
                sizedBox5(),
                myText(
                  color: myGrey!,
                  size: 15,
                  text: "Sincere@april.biz",
                  fontweight: FontWeight.w400,
                ),
                sizedBox5(),
                Text("1-770-736-8031 x56442"),
                sizedBox10(),
                sizedBox10(),
                Padding(
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
                          text:
                              "Kulas Light\nApt. 556\nGwenborough\n92998-3874",
                          fontweight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
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
                          text:
                              "Romaguera-Crona\nMulti-layered client-server neural-net\nharness real-time e-markets",
                          fontweight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ),
                myText(
                  color: myGrey!,
                  size: 15,
                  text: "Website:${"hildegard.org"}",
                  fontweight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
