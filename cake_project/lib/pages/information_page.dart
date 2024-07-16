import 'package:flutter/material.dart';
import 'package:cake_project/components/my_textfield.dart';
import 'package:cake_project/components/my_button.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();

  void saveInformation() async {
    // Implement the password reset logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 244, 244),
      appBar: AppBar(
        title: const Text(
          'THÔNG TIN',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 235, 69, 95),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 0),

                // Profile Picture
                GestureDetector(
                  onTap: () {
                    // Xử lý khi nhấn vào để cập nhật ảnh đại diện
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      size: 50,
                      color: Colors.grey[600],
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Username
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Text(
                        'Tên đăng nhập:',
                        style: TextStyle(
                          color: Color.fromARGB(255, 55, 54, 54),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                MyTextfield(
                  controller: usernameController,
                  hintText: "Cẩm Tú",
                  obscureText: false,
                ),

                const SizedBox(height: 15),

                // Email
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Text(
                        'Email:',
                        style: TextStyle(
                          color: Color.fromARGB(255, 55, 54, 54),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                MyTextfield(
                  controller: emailController,
                  hintText: "zofgk@gmail.com",
                  //keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),

                const SizedBox(height: 15),

                // Phone Number
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Text(
                        'Số điện thoại:',
                        style: TextStyle(
                          color: Color.fromARGB(255, 55, 54, 54),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                MyTextfield(
                  controller: phoneController,
                  hintText: "0986780241",
                  //keyboardType: TextInputType.phone,
                  obscureText: false,
                ),

                const SizedBox(height: 15),

                // Address
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Text(
                        'Địa chỉ:',
                        style: TextStyle(
                          color: Color.fromARGB(255, 55, 54, 54),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                MyTextfield(
                  controller: addressController,
                  hintText: "Nguyễn Duy Dương, quận 10",
                  obscureText: false,
                ),

                const SizedBox(height: 15),

                // City
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Text(
                        'Thành phố:',
                        style: TextStyle(
                          color: Color.fromARGB(255, 55, 54, 54),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                MyTextfield(
                  controller: cityController,
                  hintText: "Thành phố Hồ Chí Minh",
                  obscureText: false,
                ),

                const SizedBox(height: 30),

                // // Confirm Button
                // ElevatedButton(
                //   onPressed: () {
                //     // Xử lý khi nhấn nút Xác nhận
                //   },
                //   child: const Text('Xác Nhận'),
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: const Color.fromARGB(255, 235, 69, 95),
                //     padding: const EdgeInsets.symmetric(vertical: 15),
                //   ),
                // ),

                MyButton(
                  text: "Xác nhận",
                  onTap: saveInformation,
                ),

                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
