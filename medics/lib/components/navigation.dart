import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:medics/constants.dart';
import 'package:medics/screens/ambulance_screen/ambulance_screen.dart';
import 'package:medics/screens/doctor_screen/doctor_screen.dart';
import 'package:medics/screens/home_screen/home_screen.dart';
import 'package:medics/screens/hospital_screen/hospital_screen.dart';
import 'package:medics/screens/profile_screen/profile_screen.dart';

class ButtomNav extends StatefulWidget {
  const ButtomNav({Key? key}) : super(key: key);

  @override
  _ButtomNavState createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  int currentIndex = 2;
  final pages = [
    const AmbulanceScreen(),
    const DoctorScreen(),
    const HomeScreen(),
    const HospitalScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
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
          automaticallyImplyLeading: false,
          backgroundColor: kPrimaryColor,
          centerTitle: true,
        ),
      ),
      bottomNavigationBar: GNav(
        selectedIndex: currentIndex,
        //backgroundColor: kPrimaryColor,
        tabBackgroundColor: kPrimaryLightColor,
        gap: 6,
        onTabChange: (index) => setState(() => currentIndex = index),
        padding: const EdgeInsets.all(16),
        tabs: const [
          GButton(
            icon: Icons.airport_shuttle_outlined,
            text: 'Ambulance',
          ),
          GButton(
            icon: Icons.groups_outlined,
            text: 'Doctors',
          ),
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.apartment_outlined,
            text: 'Hospital',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          )
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
    );
  }
}
