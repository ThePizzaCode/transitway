import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:transitway/Pages/homescreen.dart';
import 'package:transitway/Pages/linespage.dart';
import 'package:transitway/Pages/otp.dart';
import 'package:transitway/Pages/profilepage.dart';
import 'package:transitway/Pages/ticketspage.dart';

class navBar extends StatefulWidget {
  const navBar({Key? key}) : super(key: key);

  @override
  _navBarState createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    homePage(),
    linesPage(),
    ticketsPage(),
    profilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
        child: GNav(
          padding: EdgeInsets.all(15),
          activeColor: Colors.purple,
          tabBackgroundColor: Color.fromARGB(255, 239, 213, 244),
          tabs: const [
            GButton(
              icon: Icons.home_filled,
              gap: 8,
              text: 'Acasa',
            ),
            GButton(
              icon: Icons.bus_alert,
              gap: 8,
              text: 'Linii',
            ),
            GButton(
              icon: Icons.airplane_ticket,
              gap: 8,
              text: 'Bilete',
            ),
            GButton(
              icon: Icons.person,
              gap: 8,
              text: 'Profil',
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
