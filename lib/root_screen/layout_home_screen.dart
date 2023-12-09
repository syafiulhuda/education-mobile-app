import 'package:education_app/screens/akun_screen.dart';
import 'package:education_app/screens/beranda_screen.dart';
import 'package:education_app/screens/favorit_screen.dart';
import 'package:education_app/screens/tugas_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class LayoutHomeScreen extends StatefulWidget {
  const LayoutHomeScreen({super.key});

  @override
  State<LayoutHomeScreen> createState() => _LayoutHomeScreenState();
}

class _LayoutHomeScreenState extends State<LayoutHomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomeScreen(),
    TugasScreen(),
    FavoritScreen(),
    AkunScreen(),
  ];

  void onBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: GNav(
            selectedIndex: _currentIndex,
            onTabChange: onBarTapped,
            activeColor: const Color(0xFF674AEF),
            color: Colors.grey,
            iconSize: 32,
            textStyle: const TextStyle(
              color: Color(0xFF674AEF),
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
            tabBackgroundColor: Colors.grey.shade300,
            padding: const EdgeInsets.all(15),
            gap: 8,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Beranda',
              ),
              GButton(
                icon: Icons.assignment,
                text: 'Tugas',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Favorit',
              ),
              GButton(
                icon: Icons.person,
                text: 'Akun',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
