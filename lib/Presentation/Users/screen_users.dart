import 'package:brain_wired_apk/Presentation/User_details/screen_user_details.dart';
import 'package:brain_wired_apk/Presentation/Users/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Core/colors.dart';

class screenUsers extends StatelessWidget {
  const screenUsers({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Employees"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 20,
              ),
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                height: ScreenHeight * 0.09,
                width: ScreenWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: TileGradientColor),
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => screenUserDetails(
                          screenHeight: ScreenHeight,
                          screenWidth: ScreenWidth,
                        ),
                      )),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: myWhite,
                      radius: 30,
                    ),
                    title: Text("Bret"),
                    subtitle: Text("Sincere@april.biz"),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
