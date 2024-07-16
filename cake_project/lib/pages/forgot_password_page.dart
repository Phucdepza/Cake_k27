import 'package:cake_project/components/my_button.dart';
import 'package:cake_project/components/my_textfield.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController();
  final pinController = TextEditingController();
  final newPasswordController = TextEditingController();
  final usernameController = TextEditingController();

  void resetPassword() async {
    // Implement the password reset logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 244, 244),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),

                // Title
                const Text(
                  'Quên Mật Khẩu',
                  style: TextStyle(
                    color: Color.fromARGB(255, 235, 69, 95),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  
                  
                ),
                
                const SizedBox(height: 30),

                // Username
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Text(
                        'Tên đăng nhập:',
                        style: TextStyle(
                          color: Color.fromARGB(255, 55, 54, 54),
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                MyTextfield(
                  controller: usernameController,
                  hintText: "Nhập tên đăng nhập",
                  obscureText: false,
                ),

                const SizedBox(height: 30),

                // Email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      const Text(
                        'Email:',
                        style: TextStyle(
                          color: Color.fromARGB(255, 55, 54, 54),
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                MyTextfield(
                  controller: emailController,
                  hintText: "Nhập email",
                  obscureText: false,
                ),

                const SizedBox(height: 30),

                // PIN
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      const Text(
                        'Mã PIN:',
                        style: TextStyle(
                          color: Color.fromARGB(255, 55, 54, 54),
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                MyTextfield(
                  controller: pinController,
                  hintText: "Nhập mã pin",
                  obscureText: true,
                ),

                const SizedBox(height: 30),

                // New Password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      const Text(
                        'Mật khẩu mới:',
                        style: TextStyle(
                          color: Color.fromARGB(255, 55, 54, 54),
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                MyTextfield(
                  controller: newPasswordController,
                  hintText: "Nhập mật khẩu mới",
                  obscureText: true,
                ),

                const SizedBox(height: 50),

                // Reset Password button
                MyButton(
                  text: "Xác nhận",
                  onTap: resetPassword,
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
