import 'package:brain_wired_apk/controller/featching_users/featching_user_cubit.dart';
import 'package:brain_wired_apk/view/users/screen_users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeatchingUserCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'brain wired',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const ScreenUsers()),
    );
  }
}
