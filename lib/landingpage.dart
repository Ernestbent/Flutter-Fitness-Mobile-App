import 'package:fitness/create-profile.dart';
// ignore: duplicate_import
import 'package:fitness/create-profile.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Loading_Page extends StatelessWidget {
  const Loading_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
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
                SizedBox(width: 3),
                Text(
                  'AVIRO',
                  style: TextStyle(fontFamily: 'Mont'),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    height: 211,
                    width: 236,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(15), // Set the border radius
                      image: DecorationImage(
                        image: AssetImage('assets/fit.jpg'),
                        fit: BoxFit.cover, // Adjust the fit of the image
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 349,
              child: Text(
                'Refine Your Health',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontFamily: 'OCRA',
                ),
              ),
            ),
            const SizedBox(
              width: 356,
              child: Text(
                'A comprehensive health app where you can measure and keep record of your heart rate, blood pressure, suger  level and habits',
                style: TextStyle(
                  color: Color(0xFF4E5B6E),
                  fontSize: 11,
                  fontFamily: 'OCRA',
                  height: 0,
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
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.play_arrow,
                        color: Colors.white), // Add your icon here
                    SizedBox(
                        width: 8), // Add some space between the icon and text
                    Text(
                      "Let's Start",
                      style: TextStyle(fontFamily: 'OCRA', color: Colors.white),
                    ),
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
