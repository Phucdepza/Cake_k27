import 'package:cake_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 244, 244),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),

                //dangnhap
                const Text(
                  'Đăng Nhập',
                  style: TextStyle(
                    color: Color.fromARGB(255, 235, 69, 95),
                    fontSize: 48,
                  ),
                ),
                const SizedBox(height: 50),

                //welcome back
                Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25),

                //username
                MyTextField(
                  controller: usernameController,
                  hintText: "Tên đăng nhập",
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                //password
                MyTextField(
                  controller: passwordController,
                  hintText: "Mật khẩu",
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                //forgot password

                //signin button

                //or continue with

                //gg + apple

                //register now
              ],
            ),
          ),
        ));
  }
}
