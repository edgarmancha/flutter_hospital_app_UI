// ignore_for_file: prefer_final_fields, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wholeness/forum.dart';
import 'package:wholeness/homepage.dart';
import 'package:wholeness/insights.dart';
import 'package:wholeness/settings.dart';
import 'package:wholeness/signup.dart';
import 'chatpage.dart';
import 'constants/utils.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, systemNavigationBarColor: Colors.white));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiStepSignUp(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = [
    const HomePage(),
    const InsightsPage(),
    const ForumPage(),
    const SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: SafeGoogleFont('Poppins',
            fontSize: 12,
            fontWeight: FontWeight.normal,
            height: 1.5,
            color: Colors.black.withOpacity(0.6)),
        unselectedLabelStyle: SafeGoogleFont('Poppins',
            fontSize: 12,
            fontWeight: FontWeight.normal,
            height: 1.5,
            color: Colors.black.withOpacity(0.6)),
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.medication_outlined),
            label: 'Treatments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insights),
            label: 'Insights',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Forum',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        onTap: _onItemTapped,
      ),
    );
  }
}
