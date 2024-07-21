import 'package:cake_project/provider/cart_provider.dart';
import 'package:cake_project/theme/colors.dart';
import 'package:flutter/material.dart';

class CheckOutBox extends StatelessWidget {
  const CheckOutBox({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Container(
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        )
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              filled: false,
              fillColor:  primaryColors,
              hintText: "Nhập mã giảm giá ",
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 14
              ),
              suffixIcon: TextButton(
                onPressed: (){},
                child: const Text(
                  "Chấp nhận", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.pink
                  ),
                ),
              )
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Tổng dự tính",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              Text(
                "\$${provider.totalPrice()}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,          
          ),
          const Divider(),
          const SizedBox(
            height: 10,          
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Tổng cộng ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "\$${provider.totalPrice()}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,          
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              minimumSize: const Size(double.infinity, 55),
            ),
            onPressed: (){},
            child: const Text(
              "Thanh toán",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}