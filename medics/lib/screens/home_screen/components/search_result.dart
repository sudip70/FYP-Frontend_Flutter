import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medics/constants.dart';
import 'package:medics/paths.dart';

class SearchResult extends StatelessWidget {
  final String? name;
  final String? description;
  final String? symptoms;
  final String? cure;
  const SearchResult({
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
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(CupertinoIcons.back),
                        iconSize: 35,
                        color: kPrimaryColor,
                      ),
                      Text(
                        "$name",
                        //overflow: TextOverflow.visible,
                        //textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                const Padding(
                  padding: EdgeInsets.only(right: 260),
                  child: Text(
                    "Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$description",
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 17),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                const Text(
                  "Symptoms",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Text(
                  "$symptoms",
                  style: const TextStyle(fontSize: 15),
                ),
                SizedBox(height: size.height * 0.01),
                const Text(
                  "Cure",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
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
