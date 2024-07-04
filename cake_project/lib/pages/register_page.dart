//import 'package:firebase_auth/firebase_auth.dart';
import 'package:cake_app/components/my_button.dart';
import 'package:cake_app/components/my_textfield.dart';
import 'package:cake_app/components/square_tile.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

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
                const SizedBox(height: 50),

                //dangnhap
                const Text(
                  'Đăng Ký',
                  style: TextStyle(
                    color: Color.fromARGB(255, 235, 69, 95),
                    fontSize: 40,
                  ),
                ),
                const SizedBox(height: 50),

                //welcome back
                Text(
                  'Welcome back you',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25),

                //username
                MyTextField(
                  controller: emailController,
                  hintText: "Email",
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

                //confirm password
                MyTextField(
                  controller: confirmpasswordController,
                  hintText: "Xác nhận mật khẩu",
                  obscureText: true,
                ),

                const SizedBox(height: 10),

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
                const SizedBox(height: 25),

                //signin button
                MyButton(
                  text: "Đăng Ký",
                  onTap: signUserUp,
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
                          'Or continue with',
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
                    SquareTile(imagePath: 'lib/images/google.png'),

                    SizedBox(width: 25),

                    // apple button
                    SquareTile(imagePath: 'lib/images/apple.png')
                  ],
                ),

                const SizedBox(height: 50),

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
                      onTap: widget.onTap,
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
