import 'package:brain_wired_apk/view/users/screen_users.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'brain wired',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const screenUsers());
  }
}
