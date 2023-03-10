import 'package:brain_wired_apk/Core/colors.dart';
import 'package:brain_wired_apk/view/map_screen/map_screen.dart';
import 'package:brain_wired_apk/view/user_details/widgets.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../Core/core.dart';
import '../../model/model.dart';

class screenUserDetails extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final Users users;
  const screenUserDetails({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.users,
  });

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        
      ),
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
                  text: users.name,
                  fontweight: FontWeight.w500,
                ),
                sizedBox5(),
                myText(
                  color: myGrey!,
                  size: 16,
                  text: users.username,
                  fontweight: FontWeight.w400,
                ),
                sizedBox5(),
                myText(
                  color: myGrey!,
                  size: 15,
                  text: users.email,
                  fontweight: FontWeight.w400,
                ),
                sizedBox5(),
                Text(users.phone),
                sizedBox10(),
                sizedBox10(),
                addressWidget(
                    address: users.address,
                    screenHeight: screenHeight,
                    screenWidth: screenWidth),
                comapnyDetailsWidget(
                    company: users.company,
                    screenHeight: screenHeight,
                    screenWidth: screenWidth),
                myText(
                  color: myGrey!,
                  size: 15,
                  text: "Website:${users.website}",
                  fontweight: FontWeight.w500,
                ),
                TextButton.icon(
                    label: Text("Locate user"),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenGoogleMap(
                          latLng: LatLng(double.parse(users.address.geo.lat),
                              double.parse(users.address.geo.lng)),
                        ),
                      ));
                    },
                    icon: Icon(
                      Icons.location_pin,
                      color: Colors.blue,
                    ))
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
