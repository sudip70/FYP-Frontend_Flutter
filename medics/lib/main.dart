import 'package:flutter/material.dart';
import 'package:medics/components/navigation.dart';
import 'package:medics/paths.dart';
import 'package:medics/screens/aboutUs_screen/aboutus_screen.dart';
import 'package:medics/screens/ambulance_screen/ambulance_screen.dart';
import 'package:medics/screens/doctor_screen/doctor_screen.dart';
import 'package:medics/screens/feedback_screen/feedback_screen.dart';
import 'package:medics/screens/home_screen/components/covid.dart';
import 'package:medics/screens/home_screen/components/hiv.dart';
//import 'package:medics/screens/home_screen/components/search.dart';
import 'package:medics/screens/home_screen/components/std.dart';
import 'package:medics/screens/home_screen/home_screen.dart';
import 'package:medics/screens/hospital_screen/hospital_screen.dart';
import 'package:medics/screens/login_screen/login_screen.dart';
import 'package:medics/constants.dart';
import 'package:medics/screens/profile_screen/profile_screen.dart';
import 'package:medics/screens/signup_screen/signup_screen.dart';
import 'package:medics/screens/welcome_screen/welcome_screen.dart';
//import 'package:medics/screens/home_screen/components/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medics',
      //themeMode: ThemeMode.system,

      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
      routes: {
        AppPath.welcomepage: (context) => WelcomeScreen(),
        AppPath.loginpage: (context) => LoginScreen(),
        AppPath.signuppage: (context) => SignupScreen(),
        AppPath.homepage: (context) => const HomeScreen(),
        AppPath.ambulancepage: (context) => const AmbulanceScreen(),
        AppPath.doctorpage: (context) => const DoctorScreen(),
        AppPath.hospitalpage: (context) => const HospitalScreen(),
        AppPath.aboutuspage: (context) => AboutUsScreen(),
        AppPath.profilepage: (context) => const ProfileScreen(),
        AppPath.feedbackpage: (context) => const FeedbackScreen(),
        AppPath.covidpage: (context) => const CovidScreen(),
        AppPath.stdpage: (context) => const STDScreen(),
        AppPath.hivpage: (context) => const HIVScreen(),
        AppPath.mainpage: (context) => const ButtomNav()
        //AppPath.search: (context) => DataSearch()
      },
    );
  }
}
