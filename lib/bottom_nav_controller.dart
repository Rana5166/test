import 'package:flutter/material.dart';
import 'package:myapp/pages/account.dart';
import 'package:myapp/pages/ad.dart';
import 'package:myapp/pages/chat.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/my_ads.dart';

class BottomNavController extends StatefulWidget {
  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    HomeScreen(),
    MyAdsScreen(),
    AddScreen(),
    ChatScreen(),
    AccountScreen(),
  ];

  var _CurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 9, 44, 27),
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Colors.grey,
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "My_Ads",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
        currentIndex: _CurrentIndex,
        onTap: (int index) {
          setState(() {
            _CurrentIndex = index;
          });
        },
      ),
      body: _pages[_CurrentIndex],
    );
  }
}
