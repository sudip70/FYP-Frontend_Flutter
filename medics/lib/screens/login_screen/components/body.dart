import 'package:flutter/material.dart';
import 'package:medics/api/loginapi.dart';
import 'package:medics/api/medics_api.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/components/rounded_input_field.dart';
import 'package:medics/components/rounded_password_field.dart';
import 'package:medics/constants.dart';
import 'package:medics/paths.dart';
import 'package:medics/screens/login_screen/components/background.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              "Medics",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          const Text(
            "'Because Your Life Matters'",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: size.height * 0.05),
          const Padding(
            padding: EdgeInsets.only(right: 200.0, top: 140),
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
            controller: emailController,
            hintText: "example@gmail.com",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            controller: passwordController,
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () async {
              var loginResponse = await postlogin(
                  emailController.text, passwordController.text);
              print(loginResponse.runtimeType);
              print(loginResponse);
              if (loginResponse["success"] == "false") {
                String msg = loginResponse["msg"];
                var alertDialog = AlertDialog(
                  title: const Text("Login Error!!!"),
                  content: Text(msg),
                );
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alertDialog;
                    });
              } else {
                storeToken(loginResponse["access_token"]);
                Navigator.pushNamed(context, AppPath.mainpage);
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Don't have an Accont?",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 15,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppPath.signuppage);
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          RoundedButton(
            text: "Continue as Guest",
            press: () {
              Navigator.pushNamed(context, AppPath.mainpage);
            },
          ),
          const SizedBox(
            height: 145,
          )
        ],
      ),
    );
  }
}
