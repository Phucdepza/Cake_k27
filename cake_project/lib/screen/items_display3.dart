import 'package:cake_project/favorite/favorite.dart';
import 'package:cake_project/model/items_model3.dart';
import 'package:cake_project/pages/header_page.dart';
import 'package:cake_project/provider/favourite_provider3.dart';
import 'package:cake_project/screen/items_detail3.dart';
import 'package:cake_project/screen/menu_cart.dart';
import 'package:cake_project/screen/menu_contact.dart';
import 'package:cake_project/screen/menu_new.dart';
import 'package:cake_project/screen/profile_screen.dart';
import 'package:flutter/material.dart';

import '../favorite/favorite3.dart';


class ItemsDisplay3 extends StatefulWidget {
  const ItemsDisplay3({super.key});

  @override
  State<ItemsDisplay3> createState() => _ItemsDisplay3State();
}

class _ItemsDisplay3State extends State<ItemsDisplay3> {
  
  int _selectedIndex = 0;
  
  final List<Widget> _widgetOptions = <Widget>[
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderPage(),
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: cakesItems3.length,
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              mainAxisExtent: 265,
            ),
            itemBuilder: (context, index) {
              final provider3 = FavoriteProvider3.of(context);
              CakeDetail3 cake3 = cakesItems3[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemsDetail3(cake: cake3),
                  ),
                ),
                child: Container(
                  height: 265,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                cake3.image,
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              cake3.name.toString(),
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Text(
                                  cake3.cookingTime,
                                  style: const TextStyle(color: Colors.black),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  cake3.rate.toString(),
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              '\$${cake3.price}00',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                          ),
                        ],
                      ),
                      
                      Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      provider3.toggleFavorite(cake3);
                    },
                    child: Icon(
                      provider3.isExist(cake3)
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.red,
),
                  ),
                ),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Material(
                          color: Colors.pink,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            bottomRight: Radius.circular(18),
                          ),
                          child: InkWell(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ),
    const MenuCart(),
    const Favorite3(),
    const ProfileSrceen(),
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MenuCart()));
                },
              ),
              ListTile(
                leading: Icon(Icons.fiber_new, color: Colors.black),
                title: Text(
                  'Mẫu bánh mới',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MenuNew()));
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts, color: Colors.black),
                title: Text(
                  'Liên hệ',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MenuContact()));
                },
              ),
              ListTile(
leading: Icon(Icons.card_travel, color: Colors.black),
                title: Text(
                  'Giới thiệu về chúng tôi',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MenuContact()));
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
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Giỏ hàng'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Yêu thích',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tài khoản',
          ),
        ],
      ),
    );
  }
}