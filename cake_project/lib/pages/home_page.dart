import 'package:cake_project/favorite/favorite.dart';
import 'package:cake_project/pages/header_page.dart';
import 'package:cake_project/screen/items_display.dart';
import 'package:cake_project/screen/menu_cart.dart';
import 'package:cake_project/screen/menu_contact.dart';
import 'package:cake_project/screen/menu_new.dart';
import 'package:flutter/material.dart';

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
    MenuCart(),
    const Favorite(),
    const Center(child: Text('Tài khoản')),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Image.asset(
                    'lib/asset/Her.png',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.black),
                title: Text(
                  'Giỏ hàng',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MenuCart()));
                },
              ),
              ListTile(
                leading: Icon(Icons.fiber_new, color: Colors.black),
                title: Text(
                  'Mẫu bánh mới',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const MenuNew()));
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts, color: Colors.black),
                title: Text(
                  'Liên hệ',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const MenuContact()));
                },
              ),
              ListTile(
                leading: Icon(Icons.card_travel, color: Colors.black),
                title: Text(
                  'Giới thiệu về chúng tôi',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const MenuContact()));
                },
              ),
            ],
          ),
        ),
      ),
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
