// ignore_for_file: duplicate_import

import 'package:fitness/home.dart';
import 'package:fitness/landingpage.dart';
import 'package:fitness/home.dart';
import 'package:fitness/landingpage.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Profile',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF191D31),
            fontSize: 16,
            fontFamily: 'OCRA',
            fontWeight: FontWeight.w400,
            height: 0.08,
          ),
        ),
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios_rounded),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const Loading_Page()),
                );
              },
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize:
              const Size.fromHeight(1.0), // Set the height of the line
          child: Container(
            color:
                const Color.fromARGB(255, 233, 230, 230), // Color of the line
            height: 1.0, // Height of the line
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child:
                    Image.asset('assets/profile.jpg', height: 120, width: 120)),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(
                          color: Color(0xFF191D31),
                          fontSize: 16,
                          fontFamily: 'OCRA',
                          fontWeight: FontWeight.bold,
                          height: 0.08,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Center(
              child: Container(
                width: 327,
                height: 62,
                decoration: BoxDecoration(
                  color:
                      Color(0xFFFFFFFF), // Same color as the Card's background
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFF3F3F3),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.account_circle_sharp),
                      hintText: 'Ernest Benedict',
                      hintStyle: TextStyle(fontFamily: 'OCRA'),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Email or Phone',
                        style: TextStyle(
                          color: Color(0xFF191D31),
                          fontSize: 16,
                          fontFamily: 'OCRA',
                          fontWeight: FontWeight.bold,
                          height: 0.08,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Center(
              child: Container(
                width: 327,
                height: 62,
                decoration: BoxDecoration(
                  color:
                      Color(0xFFFFFFFF), // Same color as the Card's background
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFF3F3F3),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email_outlined),
                      hintText: 'ernestben69@gmail.com',
                      hintStyle: TextStyle(fontFamily: 'OCRA'),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                          color: Color(0xFF191D31),
                          fontSize: 16,
                          fontFamily: 'OCRA',
                          fontWeight: FontWeight.bold,
                          height: 0.08,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Center(
              child: Container(
                width: 327,
                height: 62,
                decoration: BoxDecoration(
                  color:
                      Color(0xFFFFFFFF), // Same color as the Card's background
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFF3F3F3),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: 'A192839......',
                      hintStyle: TextStyle(fontFamily: 'OCRA'),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'AGE',
                        style: TextStyle(
                          color: Color(0xFF191D31),
                          fontSize: 16,
                          fontFamily: 'OCRA',
                          fontWeight: FontWeight.bold,
                          height: 0.08,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Center(
              child: Container(
                width: 327,
                height: 62,
                decoration: BoxDecoration(
                  color:
                      Color(0xFFFFFFFF), // Same color as the Card's background
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFF3F3F3),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.boy_outlined,
                        size: 36,
                      ),
                      hintText: '23',
                      hintStyle: TextStyle(fontFamily: 'OCRA'),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Weight',
                        style: TextStyle(
                          color: Color(0xFF191D31),
                          fontSize: 16,
                          fontFamily: 'OCRA',
                          fontWeight: FontWeight.bold,
                          height: 0.08,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Center(
              child: Container(
                width: 327,
                height: 62,
                decoration: BoxDecoration(
                  color:
                      Color(0xFFFFFFFF), // Same color as the Card's background
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFF3F3F3),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.fitness_center_outlined),
                      hintText: '85kg',
                      hintStyle: TextStyle(fontFamily: 'OCRA'),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50, // Set the desired height
              width: 300, // Set the desired width
              child: FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Add some space between the icon and text
                    Text(
                      "Continue",
                      style: TextStyle(fontFamily: 'OCRA', color: Colors.white),
                    ),
                    Icon(Icons.arrow_forward,
                        color: Colors.white), // Add your icon here
                    SizedBox(width: 8),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            Container(
              width: 200,
              height: 5,
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
    );
  }
}
