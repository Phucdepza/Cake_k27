import 'package:cake_project/pages/first_screen.dart';
import 'package:cake_project/provider/cart_provider.dart';
import 'package:cake_project/provider/favourite_provider.dart';
import 'package:cake_project/provider/favourite_provider2.dart';
import 'package:cake_project/provider/favourite_provider3.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cake_project/pages/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Add your providers here. For example:
        ChangeNotifierProvider(create: (_)=>CartProvider(),),
        ChangeNotifierProvider(create: (_)=>FavoriteProvider(),),
        ChangeNotifierProvider(create: (_)=>FavoriteProvider2(),),
        ChangeNotifierProvider(create: (_)=>FavoriteProvider3(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cake Project',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: const FirstScreen(),
      ),
    );
  }
}

// Example of a ChangeNotifier model

