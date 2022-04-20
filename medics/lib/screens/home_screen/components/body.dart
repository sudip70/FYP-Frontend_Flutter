import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medics/api/medics_api.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/components/rounded_input_field.dart';
import 'package:medics/constants.dart';
import 'package:medics/models/bloodreq.dart';
import 'package:medics/models/medconlist.dart';
import 'package:medics/paths.dart';
import 'package:medics/screens/home_screen/components/blood_requests.dart';
import 'package:medics/screens/home_screen/components/search_result.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  void emptyField(BuildContext context) {
    var alertDialog = const AlertDialog(
      title: Text("Unauthorized User!!"),
      content: Text(
          "You can not post blood request without registering. \nPlease register to post blood requests. Thank You!!"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController searchController = TextEditingController();
    return Material(
      child: SingleChildScrollView(
        child: Column(children: <Widget>[
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 130),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 300,
                    child: RoundedInputField(
                        icon: CupertinoIcons.back,
                        hintText: "Enter condition",
                        controller: searchController,
                        onChanged: (value) {}),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  IconButton(
                    color: kPrimaryColor,
                    onPressed: () async {
                      Medcondition medConlist =
                          await getMedCondition(searchController.text);
                      List<MedCondition> info = medConlist.medCondition;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SearchResultScreen(info: info)),
                      );
                    },
                    icon: const Icon(Icons.search),
                    splashColor: kPrimaryColor,
                  )
                ],
              ),
              // SizedBox(
              //   //decoration: ,
              //   //width: 120,
              //   child: RoundedButton(
              //     text: "Search Disease",
              //     press: () async {
              //       //showSearch(context: context, delegate: DataSearch());
              //       // Medcondition conds = await getrecommendation();
              //       // print(conds.medconlist.length.toString());
              //       // List<Medconlist> info = conds.medconlist;
              //       // Navigator.push(
              //       //   context,
              //       //   MaterialPageRoute(
              //       //       builder: (context) => MyHomePage(meds: info)),
              //       //);
              //     },
              //   ),
              // ),
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
                    press: () async {
                      BloodReqInfo bloodReqInfo = await getbloodreqDetails();
                      //print(bloodReqInfo.bloodreq.length.toString());
                      List<Bloodreq> info = bloodReqInfo.bloodreq;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BloodRequestScreen(info: info)),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 170,
                child: RoundedButton(
                  color: const Color.fromARGB(233, 166, 30, 30),
                  text: "Post Request",
                  press: () async {
                    bool appState = await tokenAvailable();
                    if (appState) {
                      Navigator.pushNamed(context, AppPath.postreqpage);
                    } else {
                      emptyField(context);
                    }

                    // Navigator.pushNamed(context, AppPath.postreqpage);
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
                      "Don't consume Alchohol, Don's Smoke, Be Active.",
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
