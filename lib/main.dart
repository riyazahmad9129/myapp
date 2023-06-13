import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/home.dart';
import 'package:untitled3/login2.dart';
import 'package:untitled3/login_screen.dart';
import 'package:untitled3/n_singup.dart';
import 'package:untitled3/newlogin.dart';
import 'package:untitled3/nsignup.dart';
import 'package:untitled3/signup.dart';
import 'package:untitled3/screen.dart';
import 'package:untitled3/splash_2.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: const HomePage(),
    );
  }
}
