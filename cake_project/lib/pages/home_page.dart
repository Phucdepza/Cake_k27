  import 'package:cake_project/favorite/favorite.dart';
  import 'package:cake_project/pages/header_page.dart';
  import 'package:cake_project/screen/items_display.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter/widgets.dart';

  class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
    int _selectedIndex = 0;
    final List<Widget> _widgetOptions = <Widget>[
      ListView(
        children: const [
          SizedBox(height: 15,),
          HeaderPage(),
          ItemsDisplay(),
          Favorite(),
        ],
      ),
      Center(child: Text('Giỏ hàng')),
      Favorite(),
      Center(child: Text('Tài khoản')),
    ];

    void _onItemTap(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Trang chủ'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Giỏ hàng'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Yêu thích'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Tài khoản'),
          ],
        ),
      );
    }
  }
