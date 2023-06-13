import 'package:flutter/material.dart';
import 'package:untitled3/components/text_component.dart';
import 'package:untitled3/nsignup.dart';
import 'package:untitled3/theme.dart';

class NLogin extends StatefulWidget {
  const NLogin({Key? key}) : super(key: key);

  @override
  State<NLogin> createState() => _NLoginState();
}

class _NLoginState extends State<NLogin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey _formkey = GlobalKey();
  bool IsPasswoedHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3 - 40,
              decoration: const BoxDecoration(
                color: MyTheme.primary1,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(90),
                  bottomLeft: Radius.circular(90),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 110, left: 150),
                  child: SizedBox(
                    height: 110,
                    child: Card(
                      elevation: 8,
                      shadowColor: Colors.brown,
                      child: Image.asset(
                        "lib/assets/images/Facebook-Icon-PNG-6.png",
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 80, left: 45),
                  child: Text(
                    "Login your Account",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
                Card(
                  elevation: 8,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: _emailController,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        hintText: "Email",
                        border: InputBorder.none),
                  ),
                ),
                Card(
                  elevation: 8,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: _passwordController,
                    obscureText: IsPasswoedHidden,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        hintText: "Password",
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
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
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    "- Or Signin with -",
                    style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const SizedBox(
                      width: 110,
                    ),
                    Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          "lib/assets/images/Logo_2.png",
                          height: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "lib/assets/images/Facebook-Icon-PNG-6.png",
                        height: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "lib/assets/images/twitter.png",
                        height: 40,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 67,
                    ),
                    const Text(
                      "if you have no any account?",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NSignUp(),
                          ),
                        );
                      },
                      child: const Text(
                        "SignUp",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget wrapperWidget(Widget child,
    {double left = 30.0,
    double right = 0.0,
    double top = 0.0,
    double bottom = 0.0}) {
  return Padding(
    padding:
        EdgeInsets.only(top: top, left: left, right: right, bottom: bottom),
    child: child,
  );
}
