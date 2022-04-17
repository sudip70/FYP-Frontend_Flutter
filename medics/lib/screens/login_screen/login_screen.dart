import 'package:flutter/material.dart';
import 'package:medics/screens/login_screen/components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: SingleChildScrollView(child: Body()),
    );
  }
}
