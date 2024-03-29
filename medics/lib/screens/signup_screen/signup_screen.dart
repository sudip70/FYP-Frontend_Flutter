import 'package:flutter/material.dart';
import 'package:medics/screens/signup_screen/components/body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: SingleChildScrollView(child: Body()),
    );
  }
}
