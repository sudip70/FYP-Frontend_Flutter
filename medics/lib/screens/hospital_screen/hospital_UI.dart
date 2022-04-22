import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medics/constants.dart';
import 'package:medics/models/hospitals.dart';
import 'package:medics/paths.dart';
import 'package:medics/screens/hospital_screen/components/body.dart';

class HospitalUI extends StatelessWidget {
  List<Hospitals> info;
  HospitalUI({required this.info, Key? key}) : super(key: key);

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
                    "Hospital Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                for (int i = 0; i < info.length; i++)
                  HospitalDetails(
                      name: info[i].name,
                      phone: info[i].phone,
                      address: info[i].address,
                      email: info[i].email,
                      website: info[i].website),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ));
  }
}
