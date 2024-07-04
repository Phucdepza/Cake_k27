import 'package:cake_project/model/items_model.dart';

import 'package:flutter/material.dart';

class ItemsDisplay extends StatefulWidget {
  const ItemsDisplay({super.key});

  @override
  State<ItemsDisplay> createState() => _ItemsDisplayState();
}

class _ItemsDisplayState extends State<ItemsDisplay> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: cakesItems.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        mainAxisExtent: 265,
        ), 
      itemBuilder: (context,index){
        CakeDetail cake = cakesItems[index];
        return GestureDetector(
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
                    const SizedBox(height: 15,),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                        cake.image,
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
                child: Text(cake.name,
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
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(children: [
                  Text(
                    cake.cookingTime,
                    style: const TextStyle(
                      color: Colors.black),
                      
                      ),
                      const Spacer(),
                      const Icon(Icons.star,
                      color: Colors.amber,
                      size: 18,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                    cake.rate.toString(),
                    style: const TextStyle(
                    color: Colors.black),
                      
                      ),
                ],
                ),
              ),
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Text(
                  '\$${cake.price}',
                  style:  const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.black,
                  ),
                  ),
               ),

              
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 160,top: 10),
                  child: Icon(Icons.favorite_border,
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
                        child: Icon(Icons.add,
                        color: Colors.white,
                        ),
                        ),
                    ),
                    ),
                )
                
                 
              
            ],
            ),
            
            ),
        );
        

      },
     
      );
    
  }
}




   