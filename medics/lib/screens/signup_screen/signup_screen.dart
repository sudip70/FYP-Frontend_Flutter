import 'package:flutter/material.dart';
import 'package:medics/screens/signup_screen/components/body.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(child: Body()),
    );
  }
}
