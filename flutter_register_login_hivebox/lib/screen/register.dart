import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("account"),
        ),
        body: Container(
          child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset("assets/images/register.png"),
                    Text("Name", style: TextStyle(fontSize: 20)),
                    TextFormField(),
                    SizedBox(
                      height: 15,
                    ),
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
                        child: Text("Create an account"),
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
