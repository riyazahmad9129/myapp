import 'package:flutter/material.dart';

class TextFieldComponents extends StatelessWidget {
  final String? hintText;

  const TextFieldComponents({
    Key? key,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(left: 10),
          hintText: "Email Id",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
