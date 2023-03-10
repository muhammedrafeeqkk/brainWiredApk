import 'package:brain_wired_apk/Core/core.dart';
import 'package:brain_wired_apk/model/model.dart';
import 'package:flutter/material.dart';


import '../../Core/colors.dart';
import '../User_details/screen_user_details.dart';

class CustomWidget extends StatelessWidget {
  final Users user;
  const CustomWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.09,
      width: screenWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), gradient: TileGradientColor),
      child: ListTile(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => screenUserDetails(
                users: user,
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              ),
            )),
        leading: CircleAvatar(
          backgroundColor: myWhite,
          radius: 30,
          child: myText(
              text: "Id: ${user.id}",
              fontweight: FontWeight.bold,
              color: myBlack,
              size: 16),
        ),
        title: Text(user.username),
        subtitle: Text(user.email),
      ),
    );
  }
}
