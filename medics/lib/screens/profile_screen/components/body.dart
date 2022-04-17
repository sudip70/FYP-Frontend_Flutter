// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medics/components/navbar.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/constants.dart';
import 'package:medics/paths.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          title: Column(
            children: const [
              Text("Medics"),
              Text("'Because Your Life Matters'")
            ],
          ),
          backgroundColor: kPrimaryColor,
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 160, vertical: 100),
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
            Container(
              child: Text(
                "Name: \nE-mail: ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "About Us",
              textColor: Colors.black,
              color: kPrimaryLightColor,
              press: () {
                Navigator.pushNamed(context, AppPath.aboutuspage);
              },
            ),
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
                press: () {}),
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
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
