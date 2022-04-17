// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medics/components/already_have_an_account_check.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/components/rounded_input_field.dart';
import 'package:medics/components/rounded_password_field.dart';
import 'package:medics/paths.dart';
import 'package:medics/screens/signup_screen/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              "Medics",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Text(
            "'Because Your Life Matters'",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: size.height * 0.05),
          Padding(
            padding: const EdgeInsets.only(right: 100, top: 100),
            child: Text(
              "Be."
              "\nPart of US.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 55,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
              hintText: "Your Full Name",
              onChanged: (value) {},
              icon: Icons.person),
          RoundedInputField(
            hintText: "example@gmail.com",
            onChanged: (value) {},
            icon: Icons.email,
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "SIGN UP",
            press: () {},
          ),
          AlreadyHaveAnAccountCheck(
            press: () {},
          ),
          RoundedButton(
            text: "Continue as Guest",
            press: () {
              Navigator.pushNamed(context, AppPath.mainpage);
            },
          ),
          SizedBox(
            height: 120,
          ),
        ],
      ),
    );
  }
}
