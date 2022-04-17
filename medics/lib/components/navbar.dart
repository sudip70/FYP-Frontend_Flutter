import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:medics/constants.dart';
import 'package:medics/paths.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey[100],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: GNav(
          //backgroundColor: kPrimaryColor,
          tabBackgroundColor: kPrimaryLightColor,
          gap: 6,
          onTabChange: (int) {},
          padding: EdgeInsets.all(16),
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
      ),
    );
  }
}
