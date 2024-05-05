import 'package:flutter/material.dart';
import 'package:flutter_register_login_hivebox/main.dart';
import 'package:flutter_register_login_hivebox/models/userprofile.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    // ดึงข้อมูล UserProfile จาก Hive
    UserProfile? userProfile = box.get('userprofile');

    return Scaffold(
      appBar: AppBar(
        title: Text("Successful"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Registration Successful!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // แสดงข้อมูล UserProfile ที่ได้จาก Hive
            userProfile != null
                ? Column(
                    children: [
                      Text("Name: ${userProfile.name}"),
                      Text("Email: ${userProfile.email}"),
                      Text("Password:${userProfile.password}"),
                      // อาจเพิ่มเติมตามความต้องการ
                    ],
                  )
                : Text("No user profile found"),
          ],
        ),
      ),
    );
  }
}
