import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("account"),
        ),
        body: Container(
          child: Form(
              child: Column(
            children: [
              Text("Name", style: TextStyle(fontSize: 20)),
              TextFormField(),
              Text("E-mail", style: TextStyle(fontSize: 20)),
              TextFormField(),
              Text("Password", style: TextStyle(fontSize: 20)),
              TextFormField(),
            ],
          )),
        ));
  }
}
