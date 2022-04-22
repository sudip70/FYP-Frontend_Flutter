import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medics/api/medics_api.dart';
import 'package:medics/components/rounded_button.dart';
import 'package:medics/components/rounded_input_field.dart';
import 'package:medics/constants.dart';

class PostRequestScreen extends StatefulWidget {
  const PostRequestScreen({Key? key}) : super(key: key);

  @override
  State<PostRequestScreen> createState() => _PostRequestScreenState();
}

class _PostRequestScreenState extends State<PostRequestScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController bloodgroupController = TextEditingController();

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
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: const Padding(
                  padding: EdgeInsets.only(top: 120, left: 20, right: 20),
                  child: Text(
                    "Post Blood Requests",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              RoundedInputField(
                  controller: nameController,
                  hintText: "Name",
                  onChanged: (value) {},
                  icon: Icons.person),
              RoundedInputField(
                controller: phoneController,
                hintText: "Phone",
                onChanged: (value) {},
                icon: Icons.phone,
              ),
              RoundedInputField(
                controller: locationController,
                hintText: "Location",
                onChanged: (value) {},
                icon: Icons.pin_drop,
              ),
              RoundedInputField(
                controller: bloodgroupController,
                hintText: "Blood Group",
                onChanged: (value) {},
                icon: Icons.bloodtype,
              ),
              RoundedButton(
                color: const Color.fromARGB(233, 166, 30, 30),
                text: "Post Blood Request",
                press: () async {
                  try {
                    var postResponse = await postReq(
                        nameController.text,
                        phoneController.text,
                        locationController.text,
                        bloodgroupController.text);
                    if (postResponse["success"] == "false") {
                      String msg = postResponse["msg"];
                      var alertDialog = AlertDialog(
                        title: const Text("Invalid Input!!!"),
                        content: Text(msg),
                      );
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return alertDialog;
                          });
                    } else if (postResponse["success"] == "true") {
                      String msg = postResponse["msg"];
                      var alertDialog = AlertDialog(
                        title: const Text("Success!!!"),
                        content: Text(msg),
                      );
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return alertDialog;
                          });
                    }
                  } catch (e) {
                    Fluttertoast.showToast(
                        msg:
                            "Network Error. Please Check your internet connection.",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: kPrimaryLightColor,
                        textColor: Colors.black,
                        fontSize: 16.0);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
