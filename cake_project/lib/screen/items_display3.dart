import 'package:cake_project/model/items_model3.dart';
import 'package:cake_project/pages/header_page.dart';
import 'package:cake_project/screen/items_detail3.dart';
import 'package:flutter/material.dart';
class ItemsDisplay3 extends StatefulWidget {
  const ItemsDisplay3({super.key});

  @override
  State<ItemsDisplay3> createState() => _ItemsDisplay3State();
}

class _ItemsDisplay3State extends State<ItemsDisplay3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                CakeDetail3 cake3 = cakesItems3[index];
                return GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => ItemsDetail3(cake: cake3,))),
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
                              child: Text(cake3.name.toString(),
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
                        cake3.cookingTime, style:const TextStyle(color: Colors.black),               
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
                                  color: Colors.black
                          ),
                      ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                '\$${cake3.price}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 160, top: 10),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.black,
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


   
