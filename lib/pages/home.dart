// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<String> _categories = [
    "Tv",
    "Desktop Pc",
    "Mobile",
    "Tab",
    "Headphone",
    "Smart Watch",
    "Web Camera",
  ];
  List<dynamic> gridImages = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
    "assets/5.png",
    "assets/6.png",
    "assets/7.png",
    "assets/8.png",
  ];
  List<String> gridText = [
    "Iphone 12 pro (Red), \n Price \$600",
    "Iphone 12 pro (Blue), \n Price \$650",
    "Iphone 12 pro (Black), \n Price \$600",
    "Iphone 12 pro (White), \n Price \$650",
    "Iphone 12 pro (Blue), \n Price \$600",
    "Iphone 12 pro (White), \n Price \$650",
    "Laptop (HP), \n Price \$750",
    "Laptop (Dell), \n Price \$650",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, isScroll) {
            return [
              SliverAppBar(
                collapsedHeight: 350,
                expandedHeight: 350,
                backgroundColor: Colors.white,
                flexibleSpace: Column(children: [
                  Text(
                    "Gadget Shop...",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "All In One Spot.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 125,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                top: 10,
                                right: 5,
                              ),
                              child: (Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "15% off for \nall selected items.",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 231, 215, 215),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Image.asset(
                                      "assets/mobile.png",
                                      width: 90,
                                    ),
                                  ),
                                ],
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 125,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 157, 26, 142),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                top: 10,
                                right: 5,
                              ),
                              child: (Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Eid Offer 2022.",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 231, 215, 215),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Image.asset(
                                      "assets/laptops.png",
                                      height: 90,
                                    ),
                                  ),
                                ],
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 125,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 38, 144, 209),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                top: 10,
                                right: 15,
                              ),
                              child: (Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Plug it, listen to it, \nfeel it.",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 220, 234, 225),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Image.asset(
                                      "assets/headphon.png",
                                      width: 50,
                                    ),
                                  ),
                                ],
                              )),
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Categories",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                        ),
                        child: Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _categories.length,
                      itemBuilder: (
                        _,
                        index,
                      ) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 215, 228, 243),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(_categories[index]),
                            )),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ]),
              )
            ];
          },
          body: Expanded(
            child: GridView.builder(
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
              ),
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    elevation: 10,
                    color: Color.fromARGB(255, 71, 82, 238),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: -40,
                          child: Image.asset(
                            gridImages[index],
                            height: 160,
                            width: 190,
                          ),
                        ),
                        Stack(
                          children: [
                            Positioned(
                              bottom: 2,
                              child: Text(
                                gridText[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
