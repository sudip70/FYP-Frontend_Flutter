// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medics/screens/login_screen/components/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(child: Body()),
    );
  }
}
