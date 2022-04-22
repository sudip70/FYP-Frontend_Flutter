import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medics/constants.dart';
import 'package:medics/models/doctors.dart';
import 'package:medics/paths.dart';
import 'package:medics/screens/doctor_screen/components/body.dart';

class DoctorUI extends StatelessWidget {
  List<Doctors> info;
  DoctorUI({required this.info, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppPath.mainpage);
                },
                icon: const Icon(CupertinoIcons.back)),
            title: Column(
              children: const [
                Text("Medics"),
                Text("'Because Your Life Matters'")
              ],
            ),
            automaticallyImplyLeading: false,
            backgroundColor: kPrimaryColor,
            centerTitle: true,
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 20),
                  child: Text(
                    "Doctor Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                for (int i = 0; i < info.length; i++)
                  DoctorDetails(
                      name: info[i].name,
                      email: info[i].email,
                      phone: info[i].phone,
                      hospital: info[i].hospital,
                      specialization: info[i].specialization),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ));
  }
}
