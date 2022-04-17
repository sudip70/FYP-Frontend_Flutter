// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medics/components/already_have_an_account_check.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/components/rounded_input_field.dart';
import 'package:medics/components/rounded_password_field.dart';
import 'package:medics/paths.dart';
import 'package:medics/screens/login_screen/components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50),
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
            padding: const EdgeInsets.only(right: 200.0, top: 140),
            child: Text(
              "Hello."
              "\nThere",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 55,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: "example@gmail.com",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
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
            height: 145,
          )
        ],
      ),
    );
  }
}
