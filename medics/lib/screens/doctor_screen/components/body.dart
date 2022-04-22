import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medics/api/medics_api.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/constants.dart';
import 'package:medics/models/doctors.dart';
import 'package:medics/screens/doctor_screen/doctor_UI.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
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
                  "Doctor & Nurses",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SvgPicture.asset(
              "lib/assets/icons/doctors.svg",
              height: size.height * 0.50,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Complete detail of Doctors and Nurses. In case of Emergency doctor's consultation is just one call away.",
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            RoundedButton(
                text: "Get Doctor Details",
                press: () async {
                  try {
                    DoctorInfo doctorInfo = await getdoctorDetails();
                    List<Doctors> info = doctorInfo.doctors;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DoctorUI(info: info)),
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

class DoctorDetails extends StatelessWidget {
  final String? name;
  final String? email;
  final String? phone;
  final String? hospital;
  final String? specialization;
  const DoctorDetails({
    Key? key,
    required this.name,
    required this.email,
    required this.hospital,
    required this.specialization,
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
              "Name: $name \nEmail: $email \nPhone: $phone \nHospital: $hospital \nSpecialization: $specialization",
              overflow: TextOverflow.visible,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        height: 210,
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
