import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medics/api/medics_api.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/constants.dart';
import 'package:medics/models/hospitals.dart';
import 'package:medics/screens/hospital_screen/hospital_UI.dart';

class HospitalPage extends StatefulWidget {
  const HospitalPage({Key? key}) : super(key: key);

  @override
  State<HospitalPage> createState() => _HospitalPageState();
}

class _HospitalPageState extends State<HospitalPage> {
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
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "Hospitals",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SvgPicture.asset(
              "lib/assets/icons/hospital.svg",
              height: size.height * 0.50,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "When looking for Hospitals, having complete information about the hospital, including phone, email, website, and location, is always a plus.",
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            RoundedButton(
                text: "Get Hospital Details",
                press: () async {
                  try {
                    HospitalInfo hospitalInfo = await gethospitalDetails();
                    List<Hospitals> info = hospitalInfo.hospitals;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HospitalUI(info: info)),
                    );
                  } catch (e) {
                    Fluttertoast.showToast(
                        msg:
                            "Network Error. Please Check your internet connection.",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: kPrimaryLightColor,
                        textColor: Colors.black,
                        fontSize: 16.0);
                  }
                }),
            SizedBox(height: size.height * 0.02),
          ],
        ),
      ]),
    );
  }
}

class HospitalDetails extends StatelessWidget {
  final String? name;
  final String? phone;
  final String? address;
  final String? email;
  final String? website;
  const HospitalDetails({
    Key? key,
    this.name,
    this.phone,
    this.address,
    this.email,
    this.website,
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
              "Name: $name \nPhone: $phone \nAddress: $address \nEmail: $email \nWebsite: $website",
              overflow: TextOverflow.visible,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        height: 195,
        width: 335,
        decoration: BoxDecoration(
          color: kPrimaryLightColor,
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
