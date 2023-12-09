import 'package:education_app/root_screen/layout_home_screen.dart';
import 'package:education_app/screens/akun_screen.dart';
import 'package:education_app/screens/beranda_screen.dart';
import 'package:education_app/screens/daftar_screen.dart';
import 'package:education_app/screens/favorit_screen.dart';
import 'package:education_app/screens/tugas_screen.dart';
import 'package:education_app/root_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MasterMinds',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      // home: const WelcomeScreen(),
      initialRoute: '/welcome', // Rute awal
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/daftar': (context) => const DaftarScreen(),
        '/layout': (context) => const LayoutHomeScreen(),
        '/beranda': (context) => const HomeScreen(),
        '/tugas': (context) => TugasScreen(),
        '/favorit': (context) => FavoritScreen(),
        '/akun': (context) => AkunScreen(),
      },
    );
  }
}
