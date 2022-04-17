// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/constants.dart';
import 'package:medics/paths.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 80,
              left: 120,
              right: 120,
              bottom: 10,
            ),
            child: Container(
              child: Image.asset(
                "lib/assets/images/Profile.png",
                //width: size.width * 0.35,
              ),
              decoration: BoxDecoration(
                color: kTextBoxColor,
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Text(
            "Name: \nE-mail: ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "Feedback",
            textColor: Colors.black,
            color: kPrimaryLightColor,
            press: () {
              Navigator.pushNamed(context, AppPath.feedbackpage);
            },
          ),
          RoundedButton(
            text: "About Us",
            textColor: Colors.black,
            color: kPrimaryLightColor,
            press: () {
              Navigator.pushNamed(context, AppPath.aboutuspage);
            },
          ),
          RoundedButton(
              text: "Privacy Policy",
              textColor: Colors.black,
              color: kPrimaryLightColor,
              press: () {}),
          RoundedButton(
            text: "Delete Account",
            textColor: Colors.black,
            color: kPrimaryLightColor,
            press: () {
              Navigator.pushNamed(context, AppPath.feedbackpage);
            },
          ),
          RoundedButton(
            text: "Log Out",
            textColor: Colors.black,
            color: kPrimaryLightColor,
            press: () {
              Navigator.pushNamed(context, AppPath.welcomepage);
            },
          ),
        ],
      ),
    );
  }
}
