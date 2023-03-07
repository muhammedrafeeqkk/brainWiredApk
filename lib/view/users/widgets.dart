import 'package:brain_wired_apk/Core/core.dart';
import 'package:flutter/material.dart';

import '../../Core/colors.dart';

ListTile customeListTileWidget(
    {required String email, required String Usename, required int id}) {
  return ListTile(
    leading: CircleAvatar(
      child: myText(
          text: "Id: ${id}",
          fontweight: FontWeight.bold,
          color: myBlack,
          size: 16),
      backgroundColor: myWhite,
      radius: 30,
    ),
    title: Text(Usename),
    subtitle: Text(email),
  );
}
