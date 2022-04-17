// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medics/constants.dart';
import 'package:medics/screens/feedback_screen/feedback_sender.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

void emptyField(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Empty Field!!!"),
    content: Text(
        "Please submit the feedback after filling the form completely. Thank You!"),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: const [Text("Medics"), Text("'Because Your Life Matters'")],
        ),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,

              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  "Write Us",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(height: size.height * 0.05),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Name",
                      fillColor: kPrimaryLightColor,
                      filled: true),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email",
                      fillColor: kPrimaryLightColor,
                      filled: true),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: feedbackController,
                  maxLines: 10,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Feedback",
                      fillColor: kPrimaryLightColor,
                      filled: true),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      if ((nameController.text != '') &&
                          (emailController.text != '') &&
                          (feedbackController.text != '')) {
                        feedBackBot(nameController.text,
                            feedbackController.text, emailController.text);
                      } else {
                        emptyField(context);
                      }
                    },
                    child: const Text("Send"),
                    style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
