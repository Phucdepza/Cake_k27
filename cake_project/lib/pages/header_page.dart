//import 'package:cake_project/pages/navbar.dart';

import 'package:cake_project/screen/items_display.dart';
import 'package:cake_project/screen/items_display2.dart';
import 'package:cake_project/screen/items_display3.dart';
import 'package:cake_project/theme/colors.dart';
import 'package:flutter/material.dart';
class HeaderPage extends StatefulWidget {
  const HeaderPage({super.key});

  @override
  State<HeaderPage> createState() => _HeaderPageState();
}
int indexCategory = 0;
class _HeaderPageState extends State<HeaderPage> {
  @override
  Widget build(BuildContext context) {
    //return Drawer();
   return Column(
    
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        //For menu
        
          //topHeader(),
          const SizedBox(
            height: 30,
          ),

         
          // ignore: prefer_const_constructors
          title(),
          const SizedBox(
            height: 21,
          ),
          searchBar(),
           const SizedBox(
            height: 30,
          ),
           
            CategorySelection(),
           
          
      ],
    );
    
             
  }
  

  // ignore: non_constant_identifier_names
  Padding CategorySelection() {

   
    //list of times
    List<String> list = ["Bánh","Mousse","Phải thử"];
    List <IconData> icons = [Icons.cake,Icons.cookie,Icons.star];
    
    return Padding(
    padding: const EdgeInsets.only(
      left: 3,
      right: 5,
    ),
    child: SizedBox(
      height: 35,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    indexCategory = index;
                  });
                  if(index == 1){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const ItemsDisplay2()));           
                  }
                  else if(index == 2){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const ItemsDisplay3()));
                  }                 
                  else if(index == 0){
                    Navigator.pop(context, 
                    MaterialPageRoute(builder: (context) => const ItemsDisplay()));
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: indexCategory == index?Colors.pink.shade100:Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: indexCategory == index?Colors.white:Color.fromRGBO(255,228,228,1),
                    width: 1
                  )
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Icon(
                        icons[index], // Example icon
                        color: indexCategory == index ? Colors.pink : Colors.black,
                      ),
                     
                      const SizedBox(width: 5),
                      Text(
                        list[index],
                        style: TextStyle(
                          fontSize: 20,
                          color: indexCategory == index ? Colors.pink : Colors.black,
                          fontWeight: indexCategory == index ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                
              ),
              // Add a SizedBox for spacing between items
              const SizedBox(width: 10),
             
            ],
          );
        },
      ),
    ),
  );
}

  Container searchBar() {
    return Container(
        height: 55,
        
        margin: const EdgeInsets.symmetric(horizontal: 15 ),
        padding: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
        ),
        child:  Row(
          children: [
            // ignore: unnecessary_const, prefer_const_constructors
            Expanded(child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,),
                hintText: "Tìm kiếm",
                hintStyle: TextStyle(color: Colors.black26 )
                
                 ),
                 )
                 ),
                 Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){},
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 40,
                      width: 40,
                      alignment: Alignment.center,
                      child: const Icon(
                      Icons.insert_emoticon_sharp,
                      color: Colors.black,),
                      
                      ),
                      
                    ),
                 )
                 
                 

        ],),
        
        );
  }

  Padding title() {
    return const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
             Text(
              "Hi !!",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              color:Colors.black,
              fontSize: 18
            ),
            ),
            Text(
              " You are welcome ",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              color:Colors.black,
              fontSize: 30
            ),
            ),
          ],),
        );
  }

  Padding topHeader() {
    return Padding (
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Material(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: (){},
                 borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                   child:const Icon(Icons.menu_open_rounded,color:Colors.black),
                ),
              ),
            ),
            const Spacer(),
            //For location
            const Icon(Icons.location_on,color: primaryColors,size: 18,),

            const Text(
              "Ho Chi Minh city",
              style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.black38
            ),
            ),
           
            const Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular((10)),
              child: Image.asset(
                "lib/asset/icon_user.jpg",
                height: 40,
                width: 40,
              ),
            )
            


          ],
          ),
        );


    
  }
 }