import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/login_screen.dart';
import 'package:untitled3/n_singup.dart';
import 'package:untitled3/signup.dart';
import 'package:untitled3/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
