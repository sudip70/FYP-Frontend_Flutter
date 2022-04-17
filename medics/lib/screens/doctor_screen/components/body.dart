import 'package:flutter/material.dart';
import 'package:medics/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text(
                  "Doctor Details",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            const DoctorDetails(),
            SizedBox(height: size.height * 0.02),
          ],
        ),
      ]),
    );
  }
}

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({
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
            "Name: \nEmail: \nPhone: \nHospital: \nSpecialization: ",
            overflow: TextOverflow.visible,
            //textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      height: 135,
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
