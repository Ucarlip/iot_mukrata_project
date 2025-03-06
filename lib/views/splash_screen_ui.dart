import 'package:flutter/material.dart';
import 'package:iot_mukrata_project/views/home_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    // โค๊ด Splash Screen
    Future.delayed(
      //ระยะเวลาที่หน่วง
      Duration(seconds: 3),
      //พอครบเวลาหน่วง ให้ทำอะไร
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUi(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Replace this with your logo or image asset if needed
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/images/logo.png', // Uncomment this line when you have the logo
                width:
                    MediaQuery.of(context).size.width * 0.7, // Responsive width
              ),
            ),
            SizedBox(height: 50.0),
            CircularProgressIndicator(
              color: Colors.white,
            ),
            SizedBox(height: 50.0),
            Text(
              'Tech SAU BUFFET',
              style: TextStyle(
                fontSize: 28.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0), // Small spacing between text elements
            Text(
              'Copyright © 2025 by Phatsapong',
              style: TextStyle(
                color: Colors.white,
                fontSize:
                    14.0, // Slightly smaller font size for the copyright text
              ),
            ),
          ],
        ),
      ),
    );
  }
}
