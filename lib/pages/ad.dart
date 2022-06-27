// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: (Card(
              elevation: 5,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/mobile.png"),
                  backgroundColor: Colors.transparent,
                  radius: 50,
                ),
                title: Text("Title"),
                subtitle: Text("subtitel"),
                trailing: Text("\$350"),
              ),
            )),
          ),
          SafeArea(
            child: (Card(
              elevation: 5,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/mobile.png"),
                  backgroundColor: Colors.transparent,
                  radius: 50,
                ),
                title: Text("Title"),
                subtitle: Text("subtitel"),
                trailing: Text("\$350"),
              ),
            )),
          ),
          SafeArea(
            child: (Card(
              elevation: 5,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/mobile.png"),
                  backgroundColor: Colors.transparent,
                  radius: 50,
                ),
                title: Text("Title"),
                subtitle: Text("subtitel"),
                trailing: Text("\$350"),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
