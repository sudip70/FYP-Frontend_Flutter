import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medics/constants.dart';
import 'package:medics/models/ambulance.dart';
import 'package:medics/paths.dart';
import 'package:medics/screens/ambulance_screen/components/body.dart';

class AmbulanceUI extends StatelessWidget {
  List<Ambulance> info;
  AmbulanceUI({required this.info, Key? key}) : super(key: key);

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
                for (int i = 0; i < info.length; i++)
                  AmbulanceDetails(
                      orgName: info[i].organizaionName,
                      address: info[i].address,
                      phone: info[i].phone),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ));
  }
}
