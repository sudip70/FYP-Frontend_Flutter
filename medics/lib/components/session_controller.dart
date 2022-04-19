import 'package:flutter/material.dart';
import 'package:medics/api/medics_api.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/paths.dart';

class Controller extends StatelessWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Column(
        children: [
          const Text("Medics"),
          const SizedBox(
            height: 30,
          ),
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
