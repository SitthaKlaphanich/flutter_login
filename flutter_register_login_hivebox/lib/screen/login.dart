import 'package:flutter/material.dart';
import 'package:flutter_register_login_hivebox/main.dart'; // import Hive box
import 'package:flutter_register_login_hivebox/models/userprofile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  late UserProfile userProfile;

  @override
  void initState() {
    super.initState();
    // ดึงข้อมูล UserProfile จาก Hive ทันทีเมื่อหน้านี้ถูกสร้างขึ้น
    userProfile = box.get('userprofile') as UserProfile;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Successful"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome ${userProfile.name}!", // แสดงข้อความต้อนรับพร้อมกับชื่อผู้ใช้
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // ทำการลบข้อมูล UserProfile ออกจาก Hive เมื่อผู้ใช้ทำการออกจากระบบ
                box.delete('userprofile');
                Navigator.pop(
                    context); // กลับไปหน้าที่แล้ว (กลับไปยังหน้า login เช่น)
              },
              child: Text("Logout"), // ปุ่ม Logout
            ),
          ],
        ),
      ),
    );
  }
}
