//import 'package:firebase_auth/firebase_auth.dart';
import 'package:cake_project/components/my_button.dart';
import 'package:cake_project/components/my_textfield.dart';
import 'package:cake_project/components/square_tile.dart';
import 'package:cake_project/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  //final Function()? onTap;
  //const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    //   showDialog(
    //     context: context,
    //     builder: (context) {
    //       return const Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     },
    //   );

    //   try {
    //     await FirebaseAuth.instance.signInWithEmailAndPassword(
    //       email: emailController.text,
    //       password: passwordController.text,
    //     );
    //     Navigator.pop(context);
    //   } on FirebaseAuthException catch (e) {
    //     Navigator.pop(context);
    //     if (e.code == 'user-not-found') {
    //       wrongEmailMessage();
    //     }

    //     else if (e.code == 'wrong-password') {
    //       wrongPasswordMessage();
    //     }
    //   }
    // }

    // void wrongEmailMessage() {
    //   showDialog(
    //     context: context,
    //     builder: (context) {
    //       return const AlertDialog(
    //         backgroundColor: Colors.deepPurple,
    //         title: Center(
    //           child: Text(
    //             'Incorrect Email',
    //             style: TextStyle(color: Colors.white),
    //           ),
    //         ),
    //       );
    //     },
    //   );
    // }

    // void wrongPasswordMessage() {
    //   showDialog(
    //     context: context,
    //     builder: (context) {
    //       return const AlertDialog(
    //         backgroundColor: Colors.deepPurple,
    //         title: Center(
    //           child: Text(
    //             'Incorrect Password',
    //             style: TextStyle(color: Colors.white),
    //           ),
    //         ),
    //       );
    //     },
    //   );
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
                const SizedBox(height: 50),

                //dangnhap
                const Text(
                  'Đăng Nhập',
                  style: TextStyle(
                    color: Color.fromARGB(255, 235, 69, 95),
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),

                //welcome back
                Text(
                  'Đăng nhập vào tài khoản của bạn',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 35),

                //username
                MyTextfield(
                  controller: emailController,
                  hintText: "Email đăng nhập",
                  obscureText: false,
                ),

                const SizedBox(height: 15),
                //password
                MyTextfield(
                  controller: passwordController,
                  hintText: "Mật khẩu",
                  obscureText: true,
                ),

                const SizedBox(height: 15),

                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Quên mật khẩu?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                //signin button
                MyButton(
                  text: "Đăng Nhập",
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                ),

                const SizedBox(height: 50),

                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'hoặc',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),

                //gg + apple
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    // google button
                    SquareTile(imagePath: 'lib/asset/google.png'),

                    SizedBox(width: 25),

                    // apple button
                    SquareTile(imagePath: 'lib/asset/apple.png')
                  ],
                ),

                const SizedBox(height: 50),

                //register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bạn chưa có tài khoản?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      //onTap: widget.onTap,
                      child: const Text(
                        'Đăng ký',
                        style: TextStyle(
                          color: Color.fromARGB(255, 235, 69, 95),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
