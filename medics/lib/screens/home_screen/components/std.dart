import 'package:flutter/material.dart';
import 'package:medics/constants.dart';

class STDScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          title: Column(
            children: const [
              Text("Medics"),
              Text("'Because Your Life Matters'")
            ],
          ),
          backgroundColor: kPrimaryColor,
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
