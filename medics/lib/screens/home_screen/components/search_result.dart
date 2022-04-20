import 'package:flutter/material.dart';
import 'package:medics/constants.dart';
import 'package:medics/models/medconlist.dart';

class SearchResultScreen extends StatefulWidget {
  List<MedCondition> info;
  SearchResultScreen({required this.info, Key? key}) : super(key: key);

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
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
          children: [
            SizedBox(height: size.height * 0.02),
            for (int i = 0; i < widget.info.length; i++)
              SearchResult(
                  name: widget.info[i].name,
                  description: widget.info[i].description,
                  symptoms: widget.info[i].symptoms,
                  cure: widget.info[i].cure),
            const SizedBox(
              height: 30,
            )
            //SizedBox(height: size.height * 0.02),
          ],
        ),
      ),
    );
  }
}

class SearchResult extends StatelessWidget {
  final String? name;
  final String? description;
  final String? symptoms;
  final String? cure;
  const SearchResult({
    Key? key,
    this.name,
    this.description,
    this.symptoms,
    this.cure,
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
            child: Column(
              children: [
                Text(
                  "$name",
                  overflow: TextOverflow.visible,
                  //textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "Description",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "$description",
                  style: const TextStyle(fontSize: 15),
                ),
                const Text(
                  "Symptoms",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "$symptoms",
                  style: const TextStyle(fontSize: 15),
                ),
                const Text(
                  "Cure",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "$cure",
                  style: const TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
        ),
        //height: 125,
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
