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
  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      //For bottomnavigationbar
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        selectedItemColor: Colors.black, 
        unselectedItemColor: Colors.grey,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Trang chủ'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Giỏ hàng'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Yêu thích'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Tài khoản'),


        ],

        ),
      body: ListView(
        
          children: const[
            
            SizedBox(height: 15,),
            //For header page
           
            HeaderPage(),

            //For body page
            ItemsDisplay(),
          ],
        ),
      


    );
    
    
  }
}