import 'dart:math';
import 'package:cake_project/pages/home_page.dart';
import 'package:flutter/material.dart';

class MenuNew extends StatefulWidget {
  const MenuNew({super.key});

  @override
  State<MenuNew> createState() => _MenuNewState();
}

class _MenuNewState extends State<MenuNew> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              _buildPage('lib/asset/new.jpeg', 'Bánh Mousse Ice Cream', '# HẠNH NHÂN'),
              _buildPage2('lib/asset/new2.jpg', 'Bánh Mousse Chanh Dây', '# VỊ XOÀI'),
              _buildPage3('lib/asset/new3.jpg', 'Bánh Mousse Revelet', '# DÂU TÂY'),
            ],
          ),
          Positioned(
            top: 40,
            left: 10,
            child: Material(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(10),
              child: BackButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) => _buildDot(index)),
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: Material(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(10),
               child: IconButton(
               icon: Icon(Icons.notifications_none, color: Colors.black),
                
                onPressed: () {
                  
                },
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildPage(String imagePath, String title, String subtitle) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 720,
          left: 60,
          right: 30,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 27,
              color: Colors.brown,
            ),
          ),
        ),
        Positioned(
          bottom: 680,
          left: 80,
          right: 10,
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
color: Colors.brown,
            ),
          ),
        ),
      ],
    );
  }
  Widget _buildPage2(String imagePath, String title, String subtitle) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 660,
          left: 10,
          right: 40,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 120,
          top: 175,
          left: 20,
          right: 100,
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
   Widget _buildPage3(String imagePath, String title, String subtitle) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 680,
          left: 90,
          right: 10,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.brown,
            ),
          ),
        ),
        Positioned(
          bottom: 150,
          top: 150,
          left: 170,
          right: 70,
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.brown,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDot(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double? page = _pageController.page;
        if (page == null) {
          return Container(
            width: 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.brown.withOpacity(0.0),
            ),
          );
        }
        double selectedness = Curves.easeOut.transform(
          max(
            0.0,
            1.0 - (page - index).abs(),
          ),
        );
        double zoom = 1.0 + (selectedness * 0.3);
        return Container(
          width: 8.0 * zoom,
          height: 8.0 * zoom,
margin: EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.brown.withOpacity(selectedness),
          ),
        );
      },
    );
  }
}