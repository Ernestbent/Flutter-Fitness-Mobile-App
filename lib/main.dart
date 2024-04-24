import 'package:flutter/material.dart';
import 'landingpage.dart';

void main() => runApp(const MaterialApp(home: Splash()));

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    // Delayed navigation to the next page after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Loading_Page()),
      );
    });
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.circle,
              color: Colors.white,
            ),
            Icon(
              Icons.circle_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.circle,
              color: Colors.white,
            ),
            SizedBox(height: 8), // Changed to SizedBox(height: 8)
            Text(
              'AVIRO',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'OCRA',
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
