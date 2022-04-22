import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/api/medics_api.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/paths.dart';

class Controller extends StatelessWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          //SizedBox(height: size.height * 0.15),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 10),
            child: Image.asset(
              "lib/assets/images/education.gif",
              height: size.height * 0.45,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          const Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text(
              "Let's get Started",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          const Text(
            "Get all the information you need. \nAnd Save some Lives.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
              text: "Get Started",
              press: () async {
                bool appState = await tokenAvailable();
                if (appState) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, AppPath.mainpage, (route) => false);
                } else {
                  Navigator.pushNamedAndRemoveUntil(
                      context, AppPath.welcomepage, (route) => false);
                }
              })
        ],
      )),
    );
  }
}
