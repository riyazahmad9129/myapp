import 'package:flutter/material.dart';
import 'package:untitled3/newlogin.dart';
import 'package:untitled3/theme.dart';

class NSignUp extends StatefulWidget {
  const NSignUp({Key? key}) : super(key: key);

  @override
  State<NSignUp> createState() => _NSignUpState();
}

class _NSignUpState extends State<NSignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confpasswordController = TextEditingController();
  bool IsPasswordHidden = true;
  final GlobalKey _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: FlutterLogo(size: 90, curve: Curves.bounceIn),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 35, top: 70),
                    child: Text(
                      "Create Your Account",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Card(
                    elevation: 8,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: _emailController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        hintText: "Email Id",
                        border: InputBorder.none,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Card(
                    elevation: 8,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: _passwordController,
                      obscureText: IsPasswordHidden,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: "Password",
                          border: InputBorder.none),
                    ),
                  ),
                  Card(
                    elevation: 8,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: _confpasswordController,
                      obscureText: IsPasswordHidden,
                      decoration: const InputDecoration(
                          hintText: "  Conform Password",
                          border: InputBorder.none),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 10),
                    child: Card(
                      elevation: 8,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyTheme.primary1,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                          child: SizedBox(
                            height: 30,
                            child: Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 60,
                        height: 110,
                      ),
                      const Text(
                        'if already account exists?',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NLogin(),
                            ),
                          );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
