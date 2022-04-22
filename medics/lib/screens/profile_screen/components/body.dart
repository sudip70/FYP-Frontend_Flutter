// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:medics/api/medics_api.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/constants.dart';
import 'package:medics/models/profile.dart';
import 'package:medics/paths.dart';

class Body extends StatelessWidget {
  void emptyField(BuildContext context) {
    var alertDialog = const AlertDialog(
      title: Text("No User Details!!"),
      content: Text("You are not registered to the system."),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

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
            child: GestureDetector(
              onTap: () async {
                try {
                  ProfileInfo data = await getProfile();
                  var alertDialog = AlertDialog(
                    title: Column(
                      children: [
                        Text("Name: ${data.Name}"),
                        Text("Email: ${data.Email}")
                      ],
                    ),
                  );
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alertDialog;
                      });
                } catch (e) {
                  var alertDialog = AlertDialog(
                    title: Text("Guest"),
                  );
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alertDialog;
                      });
                }
              },
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
            press: () async {
              bool appState = await tokenAvailable();
              if (appState) {
                var delResponse = await deleteUser();
                //if (delResponse["success"] == "true") {
                String msg = delResponse["msg"];
                var alertDialog = AlertDialog(
                  title: const Text("Login Error!!!"),
                  content: Text(msg),
                );
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alertDialog;
                    });
                Navigator.pushNamedAndRemoveUntil(
                    context, AppPath.welcomepage, (route) => false);
              } else {
                emptyField(context);
              }
            },
          ),
          RoundedButton(
            text: "Log Out",
            textColor: Colors.black,
            color: kPrimaryLightColor,
            press: () async {
              FlutterSecureStorage? cache = FlutterSecureStorage();
              await cache.deleteAll();
              Navigator.pushNamed(context, AppPath.welcomepage);
            },
          ),
        ],
      ),
    );
  }
}
