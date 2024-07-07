import 'package:cake_project/provider/favorite_provider.dart';
import 'package:cake_project/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final finaList = provider.favorites;
    return Scaffold(
      backgroundColor: onprimaryColors,
      appBar: AppBar(
          backgroundColor: primaryColors,
          centerTitle: true,
          title: const Text('Yêu Thích',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ))),
      body: Column(
        children: [
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
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  width: 85,
                                  height: 85,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Image.network(favoriteItems.image),
                                ),
                                SizedBox(width: 10,),Column(children: [Text(favoriteItems.name,style: TextStyle(),)],)
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,right: 35,
                          child: GestureDetector(
                          onTap: (){
                            finaList.removeAt(index);
                            setState(() {                         
                            });
                          },
                          child: Icon(Icons.delete, color: Colors.red, size: 25,),
                        ))
                      ],
                    );
                  }))
        ],
      ),
    );
  }
}
