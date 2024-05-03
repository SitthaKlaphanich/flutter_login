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
              child: Column(
            children: [
              Text("E-mail", style: TextStyle(fontSize: 20)),
              TextFormField(),
              Text("Password", style: TextStyle(fontSize: 20)),
              TextFormField(),
            ],
          )),
        ));
  }
}
