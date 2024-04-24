import 'package:fitness/home.dart';
// ignore: unused_import
import 'package:fitness/landingpage.dart';
import 'package:fitness/oxygen.dart';
import 'package:fitness/sugarlevel.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Heart_Rate extends StatefulWidget {
  const Heart_Rate({super.key});

  @override
  State<Heart_Rate> createState() => _Heart_RateState();
}

// ignore: camel_case_types
class _Heart_RateState extends State<Heart_Rate> {
  int _selectedIndex = 0; // Declare _selectedIndex here
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Center(
            child: Text(
              ' Heart Beat Status',
              style: TextStyle(fontFamily: 'OCRA', fontSize: 15),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                Container(
                  width: 375,
                  height: 380,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.menu_open_outlined),
                            const SizedBox(
                              width: 220,
                            ),
                            SizedBox(
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
                                      decoration: const ShapeDecoration(
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
                                      decoration: const ShapeDecoration(
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
                                      decoration: const ShapeDecoration(
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
                          const SizedBox(
                            width: 80,
                          ),
                          const Image(
                            height: 120,
                            width: 113,
                            image: AssetImage('assets/heart.jpg'),
                          ),
                        ],
                      ),
                      const Text(
                        '80BPM',
                        style: TextStyle(fontFamily: 'OCRA', fontSize: 60),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(8.0, 2.0, 50.0,
                            8.0), // Adjust the right padding as needed
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .end, // Align the row's children towards the end (right)
                          children: [
                            Text(
                              'Normal',
                              style:
                                  TextStyle(fontFamily: 'OCRA', fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(1.0, 10.0, 8.0, 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Please put your finger on Sensor',
                              style:
                                  TextStyle(fontFamily: 'OCRA', fontSize: 10),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 349,
                  height: 320,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(
                          'Status : NORMAL\n\nIdeal : 60BPM\n\nAge : 50\n\nWeek Average: 60BPM\n\nMonth Average: 80BPM\n\nExercise 2 Times Daily, Eat Health Food, Prevent eating oil Rich food, ',
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
                ),
                const SizedBox(
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
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Sugar_Level()),
                );
              } else if (index == 1) {
                // Handle tap on index 1
                // Example: Navigate to another screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Oxygen()),
                );
              }
            });
          },
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
                  child: const Image(
                    image: AssetImage(
                        'assets/bloodsugar.png'), // Corrected asset path
                  ),
                ),
              ),
              label: 'Blood Sugar',
            ),
            const BottomNavigationBarItem(
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
            const BottomNavigationBarItem(
              icon: SizedBox(
                height: 20,
                width: 20,
                child: Image(
                  image: AssetImage('assets/heart.jpg'), // Corrected asset path
                ),
              ),
              label: 'Heart Check',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black),
              label: 'Profile',
            ),
          ],
          // Set the text style for all labels
          unselectedLabelStyle: const TextStyle(
            fontFamily: '',
            fontSize: 10,
          ),
          selectedLabelStyle: const TextStyle(
            fontFamily: '',
            fontSize: 10,
          ),
        ));
  }
}
