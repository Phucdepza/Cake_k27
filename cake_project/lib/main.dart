import 'package:cake_project/pages/first_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cake Project',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        ),
        home: const FirstScreen(),
    
    );
      

  }
}
