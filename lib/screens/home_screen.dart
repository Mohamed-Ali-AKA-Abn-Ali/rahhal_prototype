import 'package:flutter/material.dart';
import 'package:ra7al/screens/home_view.dart';
import 'package:ra7al/screens/scan.dart';
import 'package:ra7al/widgets/CardList.dart';

import '../widgets/Card.dart';

class HomeScreen extends StatefulWidget {

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ListOfWidgetsScreens=[
    HomeView(),
    Scanner(),
  ];
  int selectedIndex=0;
  void onItemTapped(int index){
    setState(() {
      selectedIndex= index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 100),
      body: Center(
        child: ListOfWidgetsScreens[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.white,
        backgroundColor: Color.fromRGBO(40, 40, 40, 100),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_2_outlined),
            label: 'Scan',
          ),
        ],
      ),

    );
  }
}
