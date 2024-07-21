
// import 'package:cake_project/screen/pay.dart';
// import 'package:flutter/material.dart';
// class CartNavbar extends StatelessWidget {
//   const CartNavbar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       child: Container(padding:  EdgeInsets.symmetric(horizontal: 15),
//       height: 70,
//       child:  Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//         Row(children: [
//           Text(
//             "Tổng tiền: ",
//             style: TextStyle(
//               fontSize: 19,
//               fontWeight: FontWeight.bold,
              
//               ),
              
//               ),
//               SizedBox(
//                 width: 15,
//               ),
//               const Text(
//                 "\870.000 vnd",
//                 style: TextStyle(
//                   fontSize: 19,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.red,
//                   ),
//                   ),
//               ],
//               ),
             
              
              
//               ElevatedButton(
//                 onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => Pay()));
//                 },
//                 style: ButtonStyle(
//                 backgroundColor: WidgetStateProperty.all(Colors.pink),
//                 padding: WidgetStateProperty.all(EdgeInsets.symmetric(
//                   vertical: 13,
//                   horizontal: 20,
//                 ),
//                 ),
//                 shape: WidgetStateProperty.all<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),

//                 ),
//                 ),
//                 child: Text(
//                   "Đặt hàng",
//                   style: TextStyle(
//                     color: Colors.white,

//                     ),
                    
//                     ),
                    
//                 ),
//       ],),
//       ),
//     );
//   }
// }