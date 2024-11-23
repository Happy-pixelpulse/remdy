import 'package:flutter/material.dart';
import 'package:remdy/screen/dashboard_screen.dart';
import 'package:remdy/screen/setting_screen.dart';

import '../utils/colors.dart';
import 'favorite_screen.dart';
import 'hospital_search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const DashboardScreen(),
    const HospitalPage(),
    const FavoriteScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
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
              child: _selectedIndex == 0
                  ? Image.asset('assets/home_green.png')
                  : Image.asset('assets/home_normal.png'),
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: _selectedIndex == 1
                    ? Image.asset('assets/hospital_green.png')
                    : Image.asset('assets/hospital_normal.png')),
            GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
                child: _selectedIndex == 2
                    ? Image.asset('assets/favorite_green.png')
                    : Image.asset('assets/favorite_normal.png')),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
              },
              child: _selectedIndex == 3
                  ? Image.asset('assets/profile_green.png')
                  : Image.asset('assets/profile_normal.png'),
            ),
          ],
        ),
      ),
    );
  }
}
