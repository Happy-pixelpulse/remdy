import 'package:flutter/material.dart';
import 'package:remdy/screen/dashboard_screen.dart';
import 'package:remdy/screen/setting_screen.dart';
import 'hospital_search_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const DashboardScreen(),
    const HospitalPage(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              child: Image.asset('assets/Home.png'),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: Image.asset('assets/Hospital.png'),
            ),
            GestureDetector(
              onTap: () {
                // setState(() {
                //   _selectedIndex = 2;
                // });
              },
              child: Image.asset('assets/Favorite.png'),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child: Image.asset('assets/Profile.png'),
            ),
          ],
        ),
      ),
    );
  }
}