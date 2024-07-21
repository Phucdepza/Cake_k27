import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(       
        title: Text('Tài khoản'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Phúc",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "phucdeptrai@example.com",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Cài đặt",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Tài khoản'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('Thông báo'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('Điều khoản'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      
                    },
                  ),
                
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Đăng xuất'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                     
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
