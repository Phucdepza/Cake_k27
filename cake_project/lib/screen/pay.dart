
import 'package:cake_project/screen/order_items.dart';
import 'package:flutter/material.dart';
class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade100,
          
          elevation: 0,
          title:  const Text(style: TextStyle(fontWeight: FontWeight.bold),
            'Thanh Toán',
            
            ),
            
          
          centerTitle: true,
          leading: Material(color: Colors.transparent,
          child: InkWell(borderRadius: BorderRadius.circular(10),
          onTap: (){
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back,
          color: Colors.white,
          ),
          
          ),
          ),
        ),
      body: ListView(children: [
        SingleChildScrollView(
          child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            //su dung ham phia duoi appbarwidget()
            const Padding(
              padding: EdgeInsets.only(
              top: 20,
              left: 10,
              bottom: 10,
          
          ),
              
              ),
              //Item
          
          
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 9),
                child: Container(width: 380,height: 100,
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0,3)
                  ),
                ],
                ),
                
                child: Row(children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'lib/asset/socola.png',
                      height: 90,
                    width: 90,
                    
                    fit: BoxFit.cover,
                    
                    ),
                    
                  
                  ),
                 const SizedBox(width: 20,),
                  Container(
                    width: 190,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                     
                     children: [
                      Text(
                        "Bánh Kem Socola",
                        style: TextStyle(
                          fontSize: 20,
                          
                          fontWeight: FontWeight.bold,
                          
                          ),
                        ),
                        Text(
                        "Chocola Cake",
                        style: TextStyle(
                          fontSize: 20,
                          //fontWeight: FontWeight.bold,
                          ),
                        ),
                          Text(
                        "\435.000vnđ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                     ],
                    ),
                  ),
                  const SizedBox(width: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Container(padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Colors.pink,
                    borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Icon(
              
                        Icons.add,
                    color: Colors.white,
                    ),
                    Text("1",style: TextStyle(
                      fontSize: 18,
                       
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                      ),
                    Icon(Icons.remove,
                    color: Colors.white,
                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      
                    ),
                  ),
              //Item
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 9),
                child: Container(width: 380,height: 100,
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0,3)
                  )
                ]
                ),
                child: Row(children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'lib/asset/vanila.jpg',
                      height: 90,
                    width: 90,
                    fit: BoxFit.cover,
                    ),
                   
                  ),
                 const SizedBox(width: 20,),
                  Container(
                    width: 190,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                     
                     children: [
                      Text(
                        "Bánh Kem Vanila",
                        style: TextStyle(
                          fontSize: 20,
                          
                          fontWeight: FontWeight.bold,
                          
                          ),
                        ),
                        Text(
                        "Vanila Cake",
                        style: TextStyle(
                          fontSize: 20,
                          //fontWeight: FontWeight.bold,
                          ),
                        ),
                          Text(
                        "\$435.000",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                     ],
                    ),
                  ),
                  const SizedBox(width: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Container(padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Colors.pink,
                    borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Icon(
              
                        Icons.add,
                    color: Colors.white,
                    ),
                    Text("1",style: TextStyle(
                      fontSize: 18,
                       
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                      ),
                    Icon(Icons.remove,
                    color: Colors.white,
                    ),
           
                    ],
                     ),

                    ),
                    ),
                ],
                ),
                
                ),
                
              
              ),
              
                  // 
                ],),
                ),
              
              ),
              
                    
                     Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30),
                  child: Container(padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: const Offset(0,3),

                    ),
                  ],
                  ),
                  child: const Column(children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sản phẩm:",
                          style: TextStyle(fontSize: 20),
                          ),
                          Text(
                          "1",
                          style: TextStyle(fontSize: 20),
                          ),
                                      ],
                                    ),
                                  ),

                                  Divider(
                                    color: Colors.black,
                                    ),

                                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Giá tiền:",
                          style: TextStyle(fontSize: 20),
                          ),
                          Text(
                          "\435.000 vnd",
                          style: TextStyle(fontSize: 20),
                          ),
                                      ],
                                    ),
                                  ),
                                 
                                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Vận chuyển:",
                          style: TextStyle(fontSize: 20),
                          ),
                          Text(
                          "0 vnd",
                          style: TextStyle(fontSize: 20),
                         ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.black,
                                    ),
                                   Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tổng hóa đơn:",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          Text(
                          "\870.000 vnd",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),
                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            
                     ),
                     BottomAppBar(
      child: Container(padding:  EdgeInsets.symmetric(horizontal: 15),
      height: 70,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(children: [
          Text(
            "Tổng tiền: ",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              
              ),
              
              ),
              SizedBox(
                width: 15,
              ),
              const Text(
                "\870.000 vnd",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  ),
                  ),
              ],
              ),
             
              
              
              ElevatedButton(
                onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderItems()));
                },
                style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.pink),
                padding: WidgetStateProperty.all(EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 20,
                ),
                ),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                ),
                ),
                child: Text(
                  "Đặt hàng",
                  style: TextStyle(
                    color: Colors.white,
),
          ),
        ),
      ],
    ),
  ),
),
     
      
      ],
    ),
    );
  }
}