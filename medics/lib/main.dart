import 'package:flutter/material.dart';
import 'package:medics/paths.dart';
import 'package:medics/screens/aboutUs_screen/aboutus_screen.dart';
import 'package:medics/screens/ambulance_screen/ambulance_screen.dart';
import 'package:medics/screens/doctor_screen/doctor_screen.dart';
import 'package:medics/screens/feedback_screen/feedback_screen.dart';
import 'package:medics/screens/home_screen/components/covid.dart';
import 'package:medics/screens/home_screen/components/hiv.dart';
import 'package:medics/screens/home_screen/components/std.dart';
import 'package:medics/screens/home_screen/home_screen.dart';
import 'package:medics/screens/hospital_screen/hospital_screen.dart';
import 'package:medics/screens/login_screen/login_screen.dart';
import 'package:medics/constants.dart';
import 'package:medics/screens/profile_screen/profile_screen.dart';
import 'package:medics/screens/signup_screen/signup_screen.dart';
import 'package:medics/screens/welcome_screen/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medics',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: ProfileScreen(),
      routes: {
        AppPath.welcomepage: (context) => WelcomeScreen(),
        AppPath.loginpage: (context) => LoginScreen(),
        AppPath.signuppage: (context) => SignupScreen(),
        AppPath.homepage: (context) => HomeScreen(),
        AppPath.ambulancepage: (context) => AmbulanceScreen(),
        AppPath.doctorpage: (context) => DoctorScreen(),
        AppPath.hospitalpage: (context) => HospitalScreen(),
        AppPath.aboutuspage: (context) => AboutUsScreen(),
        AppPath.profilepage: (context) => ProfileScreen(),
        AppPath.feedbackpage: (context) => FeedbackScreen(),
        AppPath.covidpage: (context) => CovidScreen(),
        AppPath.stdpage: (context) => STDScreen(),
        AppPath.hivpage: (context) => HIVScreen()
      },
    );
  }
}
