import 'package:flutter/material.dart';
import 'package:medics/constants.dart';
import 'package:medics/models/bloodreq.dart';

class BloodRequestScreen extends StatefulWidget {
  List<Bloodreq> info;
  BloodRequestScreen({required this.info, Key? key}) : super(key: key);

  @override
  State<BloodRequestScreen> createState() => _BloodRequestScreenState();
}

class _BloodRequestScreenState extends State<BloodRequestScreen> {
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
                padding: EdgeInsets.only(top: 30),
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
            for (int i = 0; i < widget.info.length; i++)
              BloodRequests(
                  name: widget.info[i].Name,
                  phone: widget.info[i].Phone,
                  location: widget.info[i].Location,
                  blood_group: widget.info[i].Blood_Group),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class BloodRequests extends StatelessWidget {
  final String? name;
  final String? phone;
  final String? location;
  final String? blood_group;
  const BloodRequests({
    Key? key,
    required this.phone,
    this.name,
    this.location,
    this.blood_group,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Name: $name \nPhone: $phone \nLocation: $location \nBlood Group: $blood_group",
              overflow: TextOverflow.visible,
              //textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        height: 125,
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
