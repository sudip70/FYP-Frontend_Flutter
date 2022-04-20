// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/api/medics_api.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/constants.dart';
import 'package:medics/models/ambulance.dart';
import 'package:medics/screens/ambulance_screen/ambulance_UI.dart';

class AmbulancePage extends StatefulWidget {
  const AmbulancePage({Key? key}) : super(key: key);

  @override
  State<AmbulancePage> createState() => _AmbulancePageState();
}

class _AmbulancePageState extends State<AmbulancePage> {
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
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "Ambulances",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SvgPicture.asset(
              "lib/assets/icons/ambulance_call.svg",
              height: size.height * 0.50,
            ),
            //SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Complete detail of Ambulances inside Kathmandu valley. In case of Emergency ambulance is just one call away.",
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            RoundedButton(
                text: "Get Ambulance Details",
                press: () async {
                  AmbulanceInfo ambulanceInfo = await getambulanceDetails();
                  print(ambulanceInfo.ambulance.length.toString());
                  List<Ambulance> info = ambulanceInfo.ambulance;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AmbulanceUI(info: info)),
                  );
                  //Container
                }),
            SizedBox(height: size.height * 0.02),
          ],
        ),
      ]),
    );
  }
}

class AmbulanceDetails extends StatelessWidget {
  final String? orgName;
  final String? address;
  final String? phone;
  const AmbulanceDetails({
    Key? key,
    required this.orgName,
    required this.address,
    required this.phone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Organization Name: $orgName \nAddress: $address \nPhone: $phone",
              overflow: TextOverflow.visible,
              //textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        height: 130,
        width: 335,
        decoration: BoxDecoration(
          color: kTextBoxColor,
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
