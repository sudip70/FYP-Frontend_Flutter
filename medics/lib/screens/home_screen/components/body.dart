import 'package:flutter/material.dart';
import 'package:medics/api/medics_api.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/constants.dart';
import 'package:medics/models/medconlist.dart';
import 'package:medics/paths.dart';
import 'package:medics/screens/home_screen/components/search.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: SingleChildScrollView(
        child: Column(children: <Widget>[
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 130),
              ),
              SizedBox(
                //decoration: ,
                //width: 120,
                child: RoundedButton(
                  text: "Search Disease",
                  press: () async {
                    Medcondition conds = await getrecommendation();
                    print(conds.medconlist.length.toString());
                    List<Medconlist> info = conds.medconlist;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(meds: info)),
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppPath.covidpage);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      "lib/assets/images/covid.png",
                      //width: size.width * 0.35,
                    ),
                    decoration: BoxDecoration(
                      color: kTextBoxColor,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppPath.hivpage);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("lib/assets/images/hiv.png"),
                    decoration: BoxDecoration(
                      color: kPrimaryLightColor,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppPath.stdpage);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("lib/assets/images/std.png"),
                    decoration: BoxDecoration(
                      color: kTextBoxColor,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  //decoration: ,
                  width: 170,
                  child: RoundedButton(
                    text: "Blood Requests",
                    press: () {
                      Navigator.pushNamed(context, AppPath.bloodreqpage);
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 170,
                child: RoundedButton(
                  color: const Color.fromARGB(233, 166, 30, 30),
                  text: "Post Request",
                  press: () {
                    Navigator.pushNamed(context, AppPath.postreqpage);
                  },
                ),
              )
            ],
          ),
          SizedBox(height: size.height * 0.015),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
            child: Column(
              children: [
                Container(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Physical fitness is the first requisite of happiness.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  height: 50,
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
                SizedBox(height: size.height * 0.02),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Keeping your body healthy is an expression of gratitude to the whole cosmos- the trees, the clouds, everything",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  height: 70,
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
                SizedBox(height: size.height * 0.02),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Don't consume Alchohol, Don's Somke, Be Active.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  height: 50,
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
                SizedBox(height: size.height * 0.02),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Get Tested, Get Vaccinated.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  height: 50,
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
                SizedBox(height: size.height * 0.02),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Avoid ultra-processed foods, Limit sugary drinks.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  height: 50,
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
                SizedBox(height: size.height * 0.02),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Eat plenty of fruits and vegetables, Eat adequate protein.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  height: 50,
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
                SizedBox(height: size.height * 0.02),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Eat more vegetables and fruits. Go for color and variety - dark green, yellow, orange, and red.",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  height: 70,
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
                SizedBox(height: size.height * 0.02),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "A daily multivitamin is a great nutrition insurance policy. Some extra vitamin D may add an extra health boost.",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  height: 70,
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
                SizedBox(height: size.height * 0.02),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Choose foods with healthy fats, limit foods high in saturated fat, and avoid foods with trans fat. Plant oils, nuts, and fish are the healthiest sources.",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  height: 70,
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
                SizedBox(height: size.height * 0.02),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Eating less salt is good for everyone’s health. Choose more fresh foods and fewer processed foods.",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  height: 70,
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
                SizedBox(height: size.height * 0.02),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Base your meals on higher fibre starchy carbohydrates.",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  height: 70,
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
                SizedBox(height: size.height * 0.02),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Choose leaner cuts of beef and pork, eat poultry without the skin and incorporate more fish into your diet.",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  height: 70,
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
              ],
            ),
          )
        ]),
      ),
    );
  }
}
