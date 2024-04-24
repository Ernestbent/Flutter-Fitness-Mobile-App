import 'package:fitness/edit_profile.dart';
import 'package:flutter/material.dart';

class Change_Password extends StatelessWidget {
  const Change_Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'Change Password',
            style: TextStyle(fontFamily: 'OCRA', fontSize: 16),
          ),
        ),
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios_rounded),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const Edit_Profile()),
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
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    'Enter Original Password',
                    style: TextStyle(fontFamily: 'OCRA', fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    'Enter New Password',
                    style: TextStyle(fontFamily: 'OCRA', fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
                      hintText: 'ofne3rd32......',
                      hintStyle: TextStyle(fontFamily: 'OCRA'),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 56, // Set the desired height
                    width: 327, // Set the desired width
                    child: SizedBox(
                      height: 56,
                      width: 327,
                      child: FloatingActionButton(
                        backgroundColor: Colors.black,
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  'Warning',
                                  style: TextStyle(fontFamily: 'OCRA'),
                                ),
                                content: Text(
                                  'Are you sure you want to continue?',
                                  style: TextStyle(fontFamily: 'OCRA'),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); // Close the dialog
                                      // Navigate to the next screen if "Yes" is pressed
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Change_Password()),
                                      );
                                    },
                                    child: Text(
                                      'Yes',
                                      style: TextStyle(fontFamily: 'OCRA'),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); // Close the dialog
                                    },
                                    child: Text(
                                      'No',
                                      style: TextStyle(fontFamily: 'OCRA'),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Add some space between the icon and text
                            Text(
                              "Continue",
                              style: TextStyle(
                                  fontFamily: 'OCRA', color: Colors.white),
                            ),
                            Icon(Icons.arrow_forward,
                                color: Colors.white), // Add your icon here
                            SizedBox(width: 8),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
