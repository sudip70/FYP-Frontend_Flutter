import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medics/api/medics_api.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/components/rounded_input_field.dart';
import 'package:medics/components/rounded_password_field.dart';
import 'package:medics/constants.dart';
import 'package:medics/paths.dart';
import 'package:medics/screens/signup_screen/components/background.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 40),
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
            padding: EdgeInsets.only(right: 100, top: 100),
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
              controller: nameController,
              hintText: "Your Full Name",
              onChanged: (value) {},
              icon: Icons.person),
          RoundedInputField(
            controller: emailController,
            hintText: "example@gmail.com",
            onChanged: (value) {},
            icon: Icons.email,
          ),
          RoundedPasswordField(
            controller: passwordController,
            onChanged: (value) {},
          ),
          RoundedButton(
              text: "SIGN UP",
              press: () async {
                var signupResponse = await signUp(nameController.text,
                    emailController.text, passwordController.text);
                if (signupResponse["success"] == "false") {
                  String msg = signupResponse["msg"];
                  var alertDialog = AlertDialog(
                    title: const Text("Invalid Input!!!"),
                    content: Text(msg),
                  );
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alertDialog;
                      });
                } else if (signupResponse["success"] == "true") {
                  Fluttertoast.showToast(
                      msg: "Signed Up Successfully!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: kPrimaryLightColor,
                      textColor: Colors.black,
                      fontSize: 16.0);
                  // String msg = signupResponse["msg"];
                  // var alertDialog = AlertDialog(
                  //   title: const Text("Success!!!"),
                  //   content: Text(msg),
                  // );
                  // showDialog(
                  //     context: context,
                  //     builder: (BuildContext context) {
                  //       return alertDialog;
                  //     });
                  Navigator.pushNamedAndRemoveUntil(
                      context, AppPath.loginpage, (route) => false);
                }
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Already Have an Accont?",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 15,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppPath.loginpage);
                },
                child: const Text(
                  "Sign In",
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
            height: 120,
          ),
        ],
      ),
    );
  }
}
