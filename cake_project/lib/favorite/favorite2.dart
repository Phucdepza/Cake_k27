import 'package:cake_project/provider/favourite_provider2.dart';
import 'package:cake_project/theme/colors.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class Favorite2 extends StatefulWidget {
  const Favorite2({super.key});

  @override
  State<Favorite2> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite2> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider2.of(context);

    final finaList = provider.favorites;
    return Scaffold(
      // backgroundColor: primaryColors,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              // color: primaryColors,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            child: Center(
              child: Text(
                'Yêu Thích',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: finaList.length,
              itemBuilder: (context, index) {
                final favoriteItems = finaList[index];
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              width: 85,
                              height: 85,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.network(favoriteItems.image),
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text(
                                  favoriteItems.name,
                                  style: TextStyle(),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      right: 35,
                      child: GestureDetector(
                        onTap: () {                        
                          finaList.removeAt(index);
                          setState(() {});
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('${favoriteItems.name} đã được xóa khỏi danh sách yêu thích'),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
