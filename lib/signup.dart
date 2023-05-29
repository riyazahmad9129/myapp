import 'package:flutter/material.dart';
import 'package:untitled3/controller/login_controller.dart';
import 'package:untitled3/login_screen.dart';
import 'package:untitled3/theme.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Georgia',
                    fontWeight: FontWeight.bold),
              ),
              const Text("Create new account",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: _nameController,
                  validator: (st) {
                    if (st == null || st.isEmpty) {
                      return "This field is required";
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Enter Your Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(200),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: _phoneController,
                  validator: (st) {
                    if (st == null || st.isEmpty) {
                      return "This field is required";
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Mobile Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(200),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: _emailController,
                  validator: (st) {
                    if (st == null || st.isEmpty) {
                      return "This field is required";
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Email Id",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(200),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Obx(
                  () => TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: _passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    obscureText: _loginController.isPasswordHidden.value,
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffix: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: GestureDetector(
                          onTap: () {
                            _loginController.isPasswordHidden(
                                !_loginController.isPasswordHidden.value);
                            setState(() {});
                          },
                          child: Icon(_loginController.isPasswordHidden.value
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(70),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyTheme.primary),
                  child: const Center(
                    child:
                        Text("Sign Up", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 60,
                  ),
                  const Text('if alredy account exists?'),
                  const SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text('Login'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
