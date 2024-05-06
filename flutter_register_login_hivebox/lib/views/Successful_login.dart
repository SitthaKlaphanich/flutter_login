import 'package:flutter/material.dart';
import 'package:flutter_register_login_hivebox/main.dart';
import 'package:flutter_register_login_hivebox/models/userprofile.dart';

class SuccessfulloginScreen extends StatelessWidget {
  const SuccessfulloginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    // Retrieve UserProfile data from Hive
    UserProfile? userProfile = box.get('userprofile');
    return Scaffold(
        appBar: AppBar(
          title: Text("Successful"),
          backgroundColor: Colors.deepOrange,
          // กำหนดหัวลูกศรบน AppBar ให้กลับไปยังหน้า HomeScreen
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/backgoundlogin.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: userProfile != null
                      ? Column(
                          children: [
                            Text(
                              "Login Successful!",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Name: ${userProfile.name}",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.normal),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Email: ${userProfile.email}",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.normal),
                            ),
                            // อาจเพิ่มเติมตามความต้องการ
                          ],
                        )
                      : Container(),
                ),
              ),
            ),
          ),
        ));
  }
}
