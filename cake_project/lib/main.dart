import 'package:cake_project/pages/first_screen.dart';
import 'package:cake_project/provider/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        ChangeNotifierProvider(create: (_)=>FavoriteProvider(),),
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

