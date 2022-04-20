import 'package:flutter/material.dart';
import 'package:medics/constants.dart';

class Body extends StatelessWidget {
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
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.04),
                Container(
                  alignment: Alignment.center,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Text(
                      "About Developer Team",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Text(
                            "Developer",
                            overflow: TextOverflow.visible,
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Sudip Shrestha \nIslington College \nKamal Pokhari Kathmandu. \n\nThis application is part of the FYP module and was created by myself. I am in my final year of a Bachelor's degree program in computing. This module's application attempts to deliver relevant information to the general audience. Flutter and Flask (Python) were used to create this project. For more details of the Project and Developer : https://github.com/sudip70 (Github), \nsudeepshrestha548@gmail.com.",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  height: 275,
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
                SizedBox(height: size.height * 0.04),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Text(
                            "Content Source / Client",
                            overflow: TextOverflow.visible,
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Ms. Asmita Shrestha \nB.Sc. Nurse TU(2074) \nNursing Instructor \nB.P Smiriti Hospital and Research Center. \n\nShe was heavily involved in the content writing of this application because she possessed the necessary qualifications. Because this is a health-related application, all of the material provided is extremely sensitive and was written with her close involvement. Having a medical degree and working in a medical institute gave me the skills and experience I needed to develop content for this application.",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  height: 290,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
