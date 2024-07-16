import 'package:cake_project/pages/home_page.dart';
import 'package:cake_project/pages/login_page.dart';
import 'package:cake_project/theme/colors.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColors,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/asset/home2.png',
              fit: BoxFit.cover,
            ),
          ),
           const Positioned(
            bottom: 460,
            left: 60,
            child: Text(
              'Mỗi chiếc bánh \n là một câu chuyện',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 16,
            right: 16,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 32),
                  backgroundColor: primaryColors,
                  foregroundColor: Colors.pink,
                  minimumSize: const Size(270, 55),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: const Text(
                  'Bắt đầu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
    ),
    );
    
  }
}