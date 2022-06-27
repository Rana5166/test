// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';

class MyAdsScreen extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 247, 242),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: _formkey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter Your email",
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "this field can't be empty";
                    } else if (val.length < 0) {
                      return "Enter Valid Data";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "this field can't be empty";
                    } else if (val.length < 10) {
                      return "Enter Valid Data";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Enter Your Password",
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "this field can't be empty";
                    } else if (val.length < 6) {
                      return "Password Must be 6-10 Characters";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 50),
                SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(builder: (_) => HomeScreen()),
                          );
                        }
                      },
                      child: Text("Validate Now"),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
