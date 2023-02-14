import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './main.dart';
import './signup.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextfield(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.obscureText})
      : super(key: key);

  //controllers
  // final usernameController = TextEditingController();
  // final emailControlller =  TextEditingController();
  // final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromARGB(0xff, 0xAB, 0xC1, 0xD4)),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlueAccent)),
          fillColor: Color.fromARGB(0xff, 0xAB, 0xC1, 0xD4),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade100,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
