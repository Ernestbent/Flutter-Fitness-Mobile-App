import 'package:fitness/edit_profile.dart';
import 'package:fitness/heart_rate.dart';
import 'package:fitness/oxygen.dart';
import 'package:fitness/sugarlevel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            Icon(
              Icons.circle,
              color: Colors.black,
            ),
            Icon(
              Icons.circle_outlined,
              color: Colors.black,
            ),
            Icon(
              Icons.circle,
              color: Colors.black,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Aviro',
              style: TextStyle(fontFamily: 'Mont'),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.share,
              color: Colors.black,
            ),
            onPressed: () {
              // Add your sharing logic here
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Edit_Profile()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Hello Ernest',
                    style: TextStyle(
                      color: Color(0xFF544E4E),
                      fontSize: 20,
                      fontFamily: 'Urbanista',
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.17,
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Your Dashboard - ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Urbanista',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.17,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 90,
              width: 337,
              child: Card(
                elevation: 5,
                color: const Color(0xFFF0F0F0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              height: 23,
                              width: 22.9,
                              image: AssetImage('assets/heart.jpg'),
                            ),
                            Text(
                              'Heart Rate',
                              style: TextStyle(
                                fontFamily: 'Urbanista',
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              '84bpm',
                              style: TextStyle(
                                fontFamily: 'Urbanista',
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            height: 23,
                            width: 22.9,
                            image: AssetImage('assets/oxygen.jpg'),
                          ),
                          Text(
                            'Oxygen Level',
                            style: TextStyle(
                              fontFamily: 'Urbanista',
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            '99',
                            style: TextStyle(
                              fontFamily: 'Urbanista',
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Transform.rotate(
                            angle: -45 *
                                (3.1415926535 / 180), // 45 degrees in radians
                            child: const Image(
                              height: 23,
                              width: 22.9,
                              image: AssetImage('assets/bloodsugar.png'),
                            ),
                          ),
                          const Text(
                            'Blood Sugar',
                            style: TextStyle(
                              fontFamily: 'Urbanista',
                              fontSize: 10,
                            ),
                          ),
                          const Text(
                            '144mg/gl',
                            style: TextStyle(
                              fontFamily: 'Urbanista',
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        children: [
                          Icon(
                            Icons.boy,
                            size: 23,
                          ),
                          Text(
                            'Weight',
                            style: TextStyle(
                              fontFamily: 'Urbanista',
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            '50kg',
                            style: TextStyle(
                              fontFamily: 'Urbanista',
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.all(10), // Add space only on the left side
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 135,
                      width: 108,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Heart_Rate()),
                          );
                        },
                        child: const Card(
                          color: Color(0xF9F9F9F9),
                          elevation: 4, // Add elevation to create a shadow
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.heart_broken,
                                  size: 36,
                                ),
                                Text(
                                  'Check Heart Rate',
                                  style: TextStyle(
                                    fontFamily: 'Urbanista',
                                  ),
                                ),
                                Text(
                                  'Current 84bpm',
                                  style: TextStyle(
                                    fontFamily: 'Urbanista',
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20), // Add some space between the cards
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Oxygen()),
                        );
                      },
                      child: Card(
                        color: const Color(0xF9F9F9F9),
                        elevation: 4, // Add elevation to create a shadow
                        child: Container(
                          height: 135,
                          width: 108,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Image(
                                  height: 36,
                                  width: 36,
                                  image: AssetImage('assets/oxygen.jpg'),
                                ),
                                Text(
                                  'Oxygen Level',
                                  style: TextStyle(
                                    fontFamily: 'Urbanista',
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'Current 99',
                                  style: TextStyle(
                                    fontFamily: 'Urbanista',
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.all(10), // Add space only on the left side
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 135,
                      width: 108,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Sugar_Level()),
                          );
                        },
                        child: Card(
                          color: const Color(0xF9F9F9F9),
                          elevation: 4, // Add elevation to create a shadow
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Transform.rotate(
                                  angle: -45 *
                                      (3.1415926535 /
                                          180), // 45 degrees in radians
                                  child: const Image(
                                    height: 36,
                                    width: 36,
                                    image: AssetImage('assets/bloodsugar.png'),
                                  ),
                                ),
                                const Text(
                                  'Check Sugar Level',
                                  style: TextStyle(
                                    fontFamily: 'Urbanista',
                                  ),
                                ),
                                const Text(
                                  'Current 144mg/gl',
                                  style: TextStyle(
                                    fontFamily: 'Urbanista',
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20), // Add some space between the cards
                  Expanded(
                    child: Card(
                      color: const Color(0xF9F9F9F9),
                      elevation: 4, // Add elevation to create a shadow
                      child: Container(
                        height: 135,
                        width: 108,
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Icon(
                                Icons.boy,
                                size: 36,
                              ),
                              Text(
                                'Enter Weight',
                                style: TextStyle(
                                  fontFamily: 'Urbanista',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Current 50kg',
                                style: TextStyle(
                                  fontFamily: 'Urbanista',
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Container(
                    width: 325,
                    height: 108,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF0F0F0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
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
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Habits',
                                style: TextStyle(fontFamily: 'Urbanista'),
                              ),
                              Spacer(), // Add a Spacer widget to push the next widget to the end
                              Text(
                                'CREATE -',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Row(
                            children: [
                              Text(
                                'Do Designing',
                                style: TextStyle(fontFamily: 'Urbanista'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 312,
                          height: 34,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 36,
                                  height: 34,
                                  decoration: const ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(
                                        side: BorderSide(width: 0.50)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 45,
                                top: 0,
                                child: Container(
                                  width: 36,
                                  height: 34,
                                  decoration: const ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(
                                        side: BorderSide(width: 0.50)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 92,
                                top: 0,
                                child: Container(
                                  width: 36,
                                  height: 34,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFF020202),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFFFFF7F7)),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 137,
                                top: 0,
                                child: Container(
                                  width: 36,
                                  height: 34,
                                  decoration: const ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(
                                        side: BorderSide(width: 0.50)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 182,
                                top: 0,
                                child: Container(
                                  width: 36,
                                  height: 34,
                                  decoration: const ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(
                                        side: BorderSide(width: 0.50)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 229,
                                top: 0,
                                child: Container(
                                  width: 36,
                                  height: 34,
                                  decoration: const ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(
                                        side: BorderSide(width: 0.50)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 276,
                                top: 0,
                                child: Container(
                                  width: 36,
                                  height: 34,
                                  decoration: const ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(
                                        side: BorderSide(width: 0.50)),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 9,
                                top: 9,
                                child: Text(
                                  'M',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.17,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 57,
                                top: 8,
                                child: Text(
                                  'T',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.17,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 104,
                                top: 8,
                                child: Text(
                                  'W',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.17,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 149,
                                top: 7,
                                child: Text(
                                  'T',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.17,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 196,
                                top: 7,
                                child: Text(
                                  'F',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.17,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 242,
                                top: 7,
                                child: Text(
                                  'S',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.17,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 289,
                                top: 9,
                                child: Text(
                                  'S',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Container(
                    // ignore: sort_child_properties_last
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Habits',
                                style: TextStyle(fontFamily: 'Urbanista'),
                              ),
                              Spacer(), // Add a Spacer widget to push the next widget to the end
                              Text(
                                'CREATE -',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Row(
                            children: [
                              Text(
                                'Painting',
                                style: TextStyle(fontFamily: 'Urbanista'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 312,
                          height: 34,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 36,
                                  height: 34,
                                  decoration: const ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(
                                        side: BorderSide(width: 0.50)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 45,
                                top: 0,
                                child: Container(
                                  width: 36,
                                  height: 34,
                                  decoration: const ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(
                                        side: BorderSide(width: 0.50)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 92,
                                top: 0,
                                child: Container(
                                  width: 36,
                                  height: 34,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFF020202),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFFFFF7F7)),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 137,
                                top: 0,
                                child: Container(
                                  width: 36,
                                  height: 34,
                                  decoration: const ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(
                                        side: BorderSide(width: 0.50)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 182,
                                top: 0,
                                child: Container(
                                  width: 36,
                                  height: 34,
                                  decoration: const ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(
                                        side: BorderSide(width: 0.50)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 229,
                                top: 0,
                                child: Container(
                                  width: 36,
                                  height: 34,
                                  decoration: const ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(
                                        side: BorderSide(width: 0.50)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 276,
                                top: 0,
                                child: Container(
                                  width: 36,
                                  height: 34,
                                  decoration: const ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(
                                        side: BorderSide(width: 0.50)),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 9,
                                top: 9,
                                child: Text(
                                  'M',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.17,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 57,
                                top: 8,
                                child: Text(
                                  'T',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.17,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 104,
                                top: 8,
                                child: Text(
                                  'W',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.17,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 149,
                                top: 7,
                                child: Text(
                                  'T',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.17,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 196,
                                top: 7,
                                child: Text(
                                  'F',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.17,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 242,
                                top: 7,
                                child: Text(
                                  'S',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.17,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 289,
                                top: 9,
                                child: Text(
                                  'S',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    width: 325,
                    height: 108,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF0F0F0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType
            .fixed, // Ensure all items are displayed with labels
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.black),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
