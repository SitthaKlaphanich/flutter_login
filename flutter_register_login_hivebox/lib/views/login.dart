import 'package:flutter/material.dart';
import 'package:flutter_register_login_hivebox/main.dart'; // import Hive box
import 'package:flutter_register_login_hivebox/models/userprofile.dart';
import 'package:flutter_register_login_hivebox/views/Successful.dart';
import 'package:flutter_register_login_hivebox/views/home.dart';
import 'package:flutter_register_login_hivebox/views/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const snackBar = SnackBar(
    content: Text('Email or Password is invalid.'),
  );

  late UserProfile userProfile = box.get('userprofile');

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email'),
              onChanged: (value) {
                setState(() {
                  emailController.text = value;
                });
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
              onChanged: (value) {
                setState(() {
                  passwordController.text = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (userProfile.email.isNotEmpty &&
                    userProfile.password.isNotEmpty) {
                  if (userProfile.email.contains('${emailController.text}') &&
                      userProfile.password
                          .contains('${passwordController.text}')) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SuccessfulScreen(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
