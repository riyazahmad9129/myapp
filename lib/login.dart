import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.maxFinite,
              color: Colors.teal,
            ),
            Container(
              height: 600,
              width: double.maxFinite,
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
