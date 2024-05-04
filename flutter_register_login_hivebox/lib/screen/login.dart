import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Container(
          child: Form(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/login.png"),
                Text("E-mail", style: TextStyle(fontSize: 20)),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                ),
                Text("Password", style: TextStyle(fontSize: 20)),
                TextFormField(
                  obscureText: true,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    child: Text("Login"),
                    onPressed: () {},
                  ),
                  height: 55,
                ),
              ],
            ),
          )),
        ));
  }
}
