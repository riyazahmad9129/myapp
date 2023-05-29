import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled3/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animationDouble;
  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    _animationDouble =
        Tween(begin: 2.0, end: 1.0).animate(_animationController);
    _animationController.forward();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  void deactivate() {
    _animationController.dispose();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.amberAccent, Colors.teal],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _animationDouble,
              child: FlutterLogo(
                size: 100,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "My App",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );
  }
}
