import 'dart:math';

import 'package:fitness/home.dart';
import 'package:flutter/material.dart';

class Sugar_Level extends StatelessWidget {
  const Sugar_Level({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 51,
                            height: 16,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 14.38,
                                    height: 16,
                                    decoration: ShapeDecoration(
                                      color: Colors.black,
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 18.31,
                                  top: 0,
                                  child: Container(
                                    width: 14.38,
                                    height: 16,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: OvalBorder(
                                          side: BorderSide(width: 0.50)),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 36.62,
                                  top: 0,
                                  child: Container(
                                    width: 14.38,
                                    height: 16,
                                    decoration: ShapeDecoration(
                                      color: Colors.black,
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios_rounded),
                          onPressed: () {
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()),
                            );
                          },
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Transform.rotate(
                          angle: -pi / 2, // Rotate the image by -90 degrees
                          child: Image(
                            height: 120,
                            width: 113,
                            image: AssetImage('assets/bloodsugar.png'),
                          ),
                        )
                      ],
                    ),
                    Text(
                      '144mg/gl',
                      style: TextStyle(fontFamily: 'OCRA', fontSize: 40),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 50.0,
                          8.0), // Adjust the right padding as needed
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .end, // Align the row's children towards the end (right)
                        children: [
                          Text(
                            'Normal',
                            style: TextStyle(fontFamily: 'OCRA', fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(1.0, 10.0, 8.0, 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Please put your finger on Sensor',
                            style: TextStyle(fontFamily: 'OCRA', fontSize: 10),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                width: 375,
                height: 380,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        'Status : NORMAL\n\nIdeal : 144mg/mg\n\nAge : 50\n\nWeek Average: 144mg/mg\n\nMonth Average: 144mg/gh\n\nExercise 2 Times Daily, Eat Health Food, Prevent eating oil Rich food, ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'OCRA',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: -0.17,
                        ),
                      )
                    ],
                  ),
                ),
                width: 349,
                height: 320,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 300,
                height: 3,
                decoration: ShapeDecoration(
                  color: const Color(0xFF191D31),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType
              .fixed, // Ensure all items are displayed with labels
          items: [
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 20,
                width: 20,
                child: Transform.rotate(
                  angle:
                      -45 * (3.14159265359 / 180), // Convert degrees to radians
                  child: Image(
                    image: AssetImage(
                        'assets/bloodsugar.png'), // Corrected asset path
                  ),
                ),
              ),
              label: 'Blood Sugar',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 20,
                width: 20,
                child: Image(
                  image:
                      AssetImage('assets/oxygen.jpg'), // Corrected asset path
                ),
              ),
              label: 'Blood Oxygen',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 20,
                width: 20,
                child: Image(
                  image: AssetImage('assets/heart.jpg'), // Corrected asset path
                ),
              ),
              label: 'Heart Check',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black),
              label: 'Profile',
            ),
          ],
          // Set the text style for all labels
          unselectedLabelStyle: TextStyle(
            fontFamily:
                '', // Replace 'YourFontFamily' with the desired font family
            fontSize: 10, // Adjust the font size as needed
            // Optionally, specify the font weight
          ),
          selectedLabelStyle: TextStyle(
            fontFamily:
                '', // Replace 'YourFontFamily' with the desired font family
            fontSize: 10, // Adjust the font size as needed
            // Optionally, specify the font weight
          ),
        ));
  }
}
