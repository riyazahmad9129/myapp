import 'package:flutter/material.dart';

class NewSignUp extends StatefulWidget {
  const NewSignUp({Key? key}) : super(key: key);

  @override
  State<NewSignUp> createState() => _NewSignUpState();
}

class _NewSignUpState extends State<NewSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 25,
            width: 50,
          ),
          const Text(
            "Get Started",
            style: TextStyle(
                fontSize: 30,
                fontFamily: 'Georgia',
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 55,
          ),
          const Text(
            "Create Your account ",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Georgia',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: "Full Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: "Email Id",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Sign Up"))
        ],
      ),
    );
  }
}
