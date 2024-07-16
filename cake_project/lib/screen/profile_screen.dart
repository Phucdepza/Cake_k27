import 'package:flutter/material.dart';

class ProfileSrceen extends StatefulWidget {
  const ProfileSrceen({super.key});

  @override
  State<ProfileSrceen> createState() => _ProfileSrceenState();
}

class _ProfileSrceenState extends State<ProfileSrceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cài đặt",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}