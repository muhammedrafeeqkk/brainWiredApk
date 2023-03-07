import 'dart:developer';

import 'package:brain_wired_apk/view/user_details/screen_user_details.dart';
import 'package:brain_wired_apk/view/users/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../Core/colors.dart';
import '../../controller/api.dart';
import '../../controller/services.dart';

class screenUsers extends StatefulWidget {
  const screenUsers({super.key});

  @override
  State<screenUsers> createState() => _screenUsersState();
}

class _screenUsersState extends State<screenUsers> {
  List<Users> listUsers = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black12,
            centerTitle: true,
            title: const Text("Users"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: listUsers.length,
              itemBuilder: (context, index) {
                final user = listUsers[index];

                return Container(
                  height: screenHeight * 0.09,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: TileGradientColor),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => screenUserDetails(
                            users: user,
                            screenHeight: screenHeight,
                            screenWidth: screenWidth,
                          ),
                        )),
                    child: customeListTileWidget(
                        Usename: user.username, email: user.email, id: user.id),
                  ),
                );
              },
            ),
          )),
    );
  }

  Future<void> fetchUsers() async {
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final user = usersFromJson(body);

    setState(() {
      listUsers = user;
    });
  }
}
