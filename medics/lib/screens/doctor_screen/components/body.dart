import 'package:flutter/material.dart';
import 'package:medics/components/navbar.dart';
import 'package:medics/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
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
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    "Doctor Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Name: \nEmail: \nPhone: \nSpecialization: ",
                      overflow: TextOverflow.visible,
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                height: 120,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Name: \nEmail: \nPhone: \nSpecialization: ",
                      overflow: TextOverflow.visible,
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                height: 120,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Name: \nEmail: \nPhone: \nSpecialization: ",
                      overflow: TextOverflow.visible,
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                height: 120,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Name: \nEmail: \nPhone: \nSpecialization: ",
                      overflow: TextOverflow.visible,
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                height: 120,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Name: \nEmail: \nPhone: \nSpecialization: ",
                      overflow: TextOverflow.visible,
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                height: 120,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Name: \nEmail: \nPhone: \nSpecialization: ",
                      overflow: TextOverflow.visible,
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                height: 120,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Name: \nEmail: \nPhone: \nSpecialization: ",
                      overflow: TextOverflow.visible,
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                height: 120,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Name: \nEmail: \nPhone: \nSpecialization: ",
                      overflow: TextOverflow.visible,
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                height: 120,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Name: \nEmail: \nPhone: \nSpecialization: ",
                      overflow: TextOverflow.visible,
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                height: 120,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Name: \nEmail: \nPhone: \nSpecialization: ",
                      overflow: TextOverflow.visible,
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                height: 120,
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
            ],
          ),
        ]),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
