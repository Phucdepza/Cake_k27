// import 'package:cake_project/components/my_textfield.dart';
// import 'package:flutter/material.dart';
// import 'package:cake_project/components/square_tile.dart';
// import 'package:cake_project/components/my_button.dart';

// class LoginPage extends StatelessWidget {
//   LoginPage({super.key});

//   //
//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 255, 244, 244),
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const SizedBox(height: 50),

//                 //dangnhap
//                 const Text(
//                   'Đăng Nhập',
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 235, 69, 95),
//                     fontSize: 48,
//                   ),
//                 ),
//                 const SizedBox(height: 50),

//                 //welcome back
//                 Text(
//                   'Đăng nhập vào tài khoản của bạn',
//                   style: TextStyle(
//                     color: Colors.grey[700],
//                     fontSize: 16,
//                   ),
//                 ),
//                 const SizedBox(height: 25),

//                 //username
//                 MyTextField(
//                   controller: emailController,
//                   hintText: "Email đăng nhập",
//                   obscureText: false,
//                 ),

//                 const SizedBox(height: 10),
//                 //password
//                 MyTextField(
//                   controller: passwordController,
//                   hintText: "Mật khẩu",
//                   obscureText: true,
//                 ),

//                 const SizedBox(height: 10),

//                 //forgot password
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Text(
//                         'Quên mật khẩu?',
//                         style: TextStyle(color: Colors.grey[600]),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 25),

//                 //signin button
//                 MyButton(
//                   text: "Đăng Nhập",
//                   onTap: signUserIn,
//                 ),

//                 const SizedBox(height: 50),

//                 //or continue with
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: Divider(
//                           thickness: 0.5,
//                           color: Colors.grey[400],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                         child: Text(
//                           'hoặc',
//                           style: TextStyle(color: Colors.grey[700]),
//                         ),
//                       ),
//                       Expanded(
//                         child: Divider(
//                           thickness: 0.5,
//                           color: Colors.grey[400],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 const SizedBox(height: 50),

//                 //gg + apple
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const [
//                     // google button
//                     SquareTile(imagePath: 'lib/images/google.png'),

//                     SizedBox(width: 25),

//                     // apple button
//                     SquareTile(imagePath: 'lib/images/apple.png')
//                   ],
//                 ),

//                 const SizedBox(height: 50),

//                 //register now
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Bạn chưa có tài khoản?',
//                       style: TextStyle(color: Colors.grey[700]),
//                     ),
//                     const SizedBox(width: 4),
//                     GestureDetector(
//                       //onTap: widget.onTap,
//                       child: const Text(
//                         'Đăng ký',
//                         style: TextStyle(
//                           color: Color.fromARGB(255, 235, 69, 95),
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
