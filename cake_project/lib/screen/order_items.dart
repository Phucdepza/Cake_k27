import 'package:cake_project/pages/home_page.dart';
import 'package:cake_project/theme/colors.dart';
import 'package:flutter/material.dart';
class OrderItems extends StatefulWidget {
  const OrderItems({super.key});

  @override
  State<OrderItems> createState() => _OrderItemsState();
}

class _OrderItemsState extends State<OrderItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const Positioned(
            bottom: 350,
            right: 60,
            left: 100,
            child: Icon(
             Icons.check_circle,
             size: 100,
             color: Colors.black,
            ),
          ),
           const Positioned(
            bottom: 500,
            left: 50,
            child: Text(
              'Đặt hàng thành công!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            bottom:15,
            
            left:25,
            right: 16,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 32),
                  backgroundColor: Colors.pink.shade100,
                  foregroundColor: Colors.pink,
                  minimumSize: const Size(270, 55),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text(
                  'Trang chủ',
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