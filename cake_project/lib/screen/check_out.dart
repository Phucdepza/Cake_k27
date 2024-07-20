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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        )
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              filled: false,
              fillColor:  primaryColors,
              hintText: "Nhập mã giảm giá ",
              hintStyle: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 14
              ),
              suffixIcon: TextButton(
                onPressed: (){},
                child: Text(
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
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tổng dự tính",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              Text(
                "\$${provider.totalPrice()}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,          
          ),
          Divider(),
          SizedBox(
            height: 10,          
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tổng cộng ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "\$${provider.totalPrice()}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,          
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              minimumSize: Size(double.infinity, 55),
            ),
            onPressed: (){},
            child: Text(
              "Check Out",
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