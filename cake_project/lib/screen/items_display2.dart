import 'package:cake_project/model/items_model.dart';
import 'package:cake_project/model/items_model2.dart';
import 'package:cake_project/pages/header_page.dart';
import 'package:cake_project/provider/favorite_provider.dart';
import 'package:cake_project/screen/items_detail2.dart';
import 'package:flutter/material.dart';
//import 'package:cake_project/pages/home_page.dart';
class ItemsDisplay2 extends StatefulWidget {
  const ItemsDisplay2({super.key});

  @override
  State<ItemsDisplay2> createState() => _ItemsDisplay2State();
}

class _ItemsDisplay2State extends State<ItemsDisplay2> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return Scaffold(
       
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderPage(),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: cakesItems2.length,
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 265,
              ),
              itemBuilder: (context, index) {
                CakeDetail2 cake2 = cakesItems2[index];
                return GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => ItemsDetail2(cake: cake2,))),
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
                                  cake2.image,
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
                              child: Text(cake2.name.toString(),
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style:const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19) ,
                      
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
                        cake2.cookingTime, style:const TextStyle(color: Colors.black),
                        
                
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
                                  cake2.rate.toString(),
                                  style: TextStyle(
                                  color: Colors.black
                          ),
                      ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                '\$${cake2.price}',
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
                      provider.toggleFavorite(cake2 as CakeDetail);
                    },
                    child: Icon(
                      provider.isExist(cake2 as CakeDetail)
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
    );
  }
}


   
