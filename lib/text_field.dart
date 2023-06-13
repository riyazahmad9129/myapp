import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

class MyTextField extends StatelessWidget {
  final String? hintText;

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? inputType;
  final bool isObscure;
  final Widget? suffixWidget;
  final int? maxLines;
  const MyTextField(
      {super.key,
      this.isObscure = false,
      this.hintText,
      this.controller,
      this.validator,
      this.inputType,
      this.suffixWidget,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        obscureText: isObscure,
        controller: controller,
        textInputAction: TextInputAction.next,
        keyboardType: inputType,
        validator: validator,
        // maxLines: isObscure ? null : maxLines,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          suffix: suffixWidget,
        ),
      ),
    );
  }
}
