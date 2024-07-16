//import 'package:firebase_auth/firebase_auth.dart';
import 'package:cake_project/components/my_button.dart';
import 'package:cake_project/components/my_textfield.dart';
import 'package:cake_project/components/square_tile.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  //final Function()? onTap;
  //const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final usernameController = TextEditingController();

  void signUserUp() async {
    //   showDialog(
    //     context: context,
    //     builder: (context) {
    //       return const Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     },
    //   );

    // try {
    //   if (passwordController.text == confirmpasswordController.text) {
    //     await FirebaseAuth.instance.signInWithEmailAndPassword(
    //       email: emailController.text,
    //       password: passwordController.text,
    //     );
    //   } else {
    //     showErrorMessage("Xác nhận mật khẩu không đúng với mật khẩu đã nhập!");
    //   }

    //   Navigator.pop(context);
    // } on FirebaseAuthException catch (e) {
    //   Navigator.pop(context);
    //   if (e.code == 'user-not-found') {
    //     wrongEmailMessage();
    //   }

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
                const SizedBox(height: 30),

                //dangnhap
                const Text(
                  'Đăng Ký',
                  style: TextStyle(
                    color: Color.fromARGB(255, 235, 69, 95),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),

                // //welcome back
                // Text(
                //   'Đăng ký tài khoản của bạn',
                //   style: TextStyle(
                //     color: Colors.grey[700],
                //     fontSize: 16,
                //   ),
                // ),
                // const SizedBox(height: 30),

                //username
                MyTextfield(
                  controller: usernameController,
                  hintText: "Tên đăng nhập",
                  obscureText: false,
                ),
                const SizedBox(height: 15),

                //Email
                MyTextfield(
                  controller: emailController,
                  hintText: "Email",
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

                //confirm password
                MyTextfield(
                  controller: confirmpasswordController,
                  hintText: "Xác nhận mật khẩu",
                  obscureText: true,
                ),

                const SizedBox(height: 15),

                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
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
                const SizedBox(height: 15),

                //signin button
                MyButton(
                  text: "Đăng Ký",
                  onTap: signUserUp,
                ),

                const SizedBox(height: 35),

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

                const SizedBox(height: 35),

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

                const SizedBox(height: 40),

                //register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bạn đã có tài khoản?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      //onTap: widget.onTap,
                      child: const Text(
                        'Đăng nhập',
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

void showErrorMessage(String s) {}
