// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/constants.dart';
import 'package:medics/paths.dart';
import 'package:medics/screens/login_screen/login_screen.dart';
import 'package:medics/screens/welcome_screen/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //This provides the total height and width of the screen.
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Text(
              "Welcome to Medics",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "lib/assets/icons/welcome_page.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.04),
            RoundedButton(
              text: "LOGIN",
              color: kPrimaryColor,
              press: () {
                Navigator.pushNamed(context, AppPath.loginpage);
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.pushNamed(context, AppPath.signuppage);
              },
            ),
            RoundedButton(
              text: "Continue As Guest",
              color: kPrimaryColor,
              press: () {
                Navigator.pushNamed(context, AppPath.mainpage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
