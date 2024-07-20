import 'package:cake_project/screen/check_out.dart';
import 'package:cake_project/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cake_project/provider/cart_provider.dart';
import 'package:cake_project/model/items_model.dart';

class MenuCart extends StatefulWidget {
  const MenuCart({super.key});

  @override
  State<MenuCart> createState() => _MenuCartState();
}

class _MenuCartState extends State<MenuCart> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    final finalist = provider.cart;

    void productQuantity(IconData icon, int index) {
      setState(() {
        if (icon == Icons.add) {
          provider.incrementQtn(index);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Added to cart successfully!'),
              duration: Duration(seconds: 1),
            ),
          );
        } else {
          provider.decrementQtn(index);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Removed from cart successfully!'),
              duration: Duration(seconds: 1),
            ),
          );
        }
      });
    }

    return Scaffold(
      bottomSheet: const CheckOutBox(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                  const Text(
                    "Giỏ hàng ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: finalist.length,
                itemBuilder: (context, index) {
                  final cartItems = finalist[index];
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: primaryColors,
                                ),
                                padding: const EdgeInsets.all(20.0),
                                child: Image.network(cartItems.image),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cartItems.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "\$${cartItems.price}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 35,
                        right: 35,
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  finalist.removeAt(index);
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Removed from cart successfully!'),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 20,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: primaryColors,
                                border: Border.all(
                                  color: Colors.grey.shade400,
                                  width: 2,
                                ),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 10),
                                  GestureDetector(
                                    onTap: () => productQuantity(Icons.remove, index),
                                    child: const Icon(
                                      Icons.remove,
                                      size: 20,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    cartItems.quantity.toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  GestureDetector(
                                    onTap: () => productQuantity(Icons.add, index),
                                    child: const Icon(
                                      Icons.add,
                                      size: 20,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
