import 'package:flutter/material.dart';
import 'package:medics/constants.dart';
import 'package:medics/models/hiv.dart';

class HivScreen extends StatefulWidget {
  List<Hiv> info;
  HivScreen({required this.info, Key? key}) : super(key: key);

  @override
  State<HivScreen> createState() => _HivScreenState();
}

class _HivScreenState extends State<HivScreen> {
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
            for (int i = 0; i < widget.info.length; i++)
              HivDetails(
                  name: widget.info[i].name,
                  description: widget.info[i].description,
                  symptoms: widget.info[i].symptoms,
                  cure: widget.info[i].cure),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class HivDetails extends StatelessWidget {
  final String? name;
  final String? description;
  final String? symptoms;
  final String? cure;
  const HivDetails({
    Key? key,
    required this.name,
    required this.description,
    required this.symptoms,
    required this.cure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        //color: Colors.red,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 15, right: 15, left: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "$name",
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              const Padding(
                padding: EdgeInsets.only(right: 265),
                child: Text(
                  "Description",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                "$description",
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 17),
              ),
              SizedBox(height: size.height * 0.01),
              const Padding(
                padding: EdgeInsets.only(right: 270),
                child: Text(
                  "Symptoms",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                "$symptoms",
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 17),
              ),
              SizedBox(height: size.height * 0.01),
              const Padding(
                padding: EdgeInsets.only(right: 330),
                child: Text(
                  "Cure",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                "$cure",
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
