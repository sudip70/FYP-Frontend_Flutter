import 'package:flutter/material.dart';
import 'package:medics/constants.dart';

class BloodRequestcreen extends StatelessWidget {
  const BloodRequestcreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
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
          children: [
            Container(
              alignment: Alignment.center,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text(
                  "Blood Requests",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            const BloodRequests(),
            SizedBox(height: size.height * 0.02),
          ],
        ),
      ),
    );
  }
}

class BloodRequests extends StatelessWidget {
  const BloodRequests({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Name: \nPhone: \nLocation: \nBlood Group: ",
            overflow: TextOverflow.visible,
            //textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      height: 125,
      width: 335,
      decoration: BoxDecoration(
        color: kTextBoxColor,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
