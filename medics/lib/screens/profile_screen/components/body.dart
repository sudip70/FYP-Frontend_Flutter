import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 130,
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
                  var alertDialog = const AlertDialog(
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
                  "lib/assets/images/profile2.gif",
                  width: size.width * 0.50,
                ),
                decoration: BoxDecoration(
                  color: kTextBoxColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
          //IconButton(onPressed: () {}, icon: Icon(Icons.visibility)),
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
                try {
                  var delResponse = await deleteUser();
                  Fluttertoast.showToast(
                      msg: "User account deleted successfully!!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: kPrimaryLightColor,
                      textColor: Colors.black,
                      fontSize: 16.0);
                  Navigator.pushNamedAndRemoveUntil(
                      context, AppPath.welcomepage, (route) => false);
                } catch (e) {
                  Fluttertoast.showToast(
                      msg:
                          "Network Error. Please Check your internet connection.",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: kPrimaryLightColor,
                      textColor: Colors.black,
                      fontSize: 16.0);
                }
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
              FlutterSecureStorage? cache = const FlutterSecureStorage();
              await cache.deleteAll();
              Fluttertoast.showToast(
                  msg: "Logged Out!! Have a great day.",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: kPrimaryLightColor,
                  textColor: Colors.black,
                  fontSize: 16.0);
              Navigator.pushNamed(context, AppPath.welcomepage);
            },
          ),
        ],
      ),
    );
  }
}
