// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medics/constants.dart';
import 'package:medics/paths.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck(
      {Key? key, this.login = true, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have and Account?" : "Already have an Account?",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 15,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AppPath.signuppage);
          },
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
