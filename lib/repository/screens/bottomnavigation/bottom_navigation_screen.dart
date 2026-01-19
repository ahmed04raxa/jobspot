import 'package:flutter/material.dart';
import 'package:jobspot/repository/screens/home/home_screen.dart';
import 'package:jobspot/repository/screens/massages/massages_screen.dart';
import 'package:jobspot/repository/screens/saved/saved_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List page = [HomeScreen(), MassagesScreen(), SavedScreen()];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        unselectedItemColor: Color(0XFFA49EB5),
        selectedItemColor: Color(0XFF0D0140),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline_rounded),
            label: "Massages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_rounded),
            label: "Saved",
          ),
        ],
      ),
    );
  }
}
