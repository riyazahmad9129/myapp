import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:untitled3/newlogin.dart';
import 'package:untitled3/theme.dart';

class SplashNew extends StatefulWidget {
  const SplashNew({Key? key}) : super(key: key);

  @override
  State<SplashNew> createState() => _SplashNewState();
}

class _SplashNewState extends State<SplashNew> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NLogin(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.primary1,
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              FlutterLogo(
                size: 100,
              ).animate().scale(
                  begin: Offset(0.3, 0.3),
                  end: Offset(1, 1),
                  curve: Curves.bounceOut,
                  duration: Duration(milliseconds: 1500))
            ],
          ),
        ),
      ),
    );
  }
}
