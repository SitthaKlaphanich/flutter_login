import 'package:flutter/material.dart';
import 'package:flutter_register_login_hivebox/screen/login.dart';
import 'package:flutter_register_login_hivebox/screen/register.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register/Login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/home.png"),
          SizedBox(
            width: double.maxFinite,
            child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegisterScreen();
                  }));
                },
                icon: Icon(Icons.add),
                label:
                    Text("Create an account", style: TextStyle(fontSize: 20))),
          ),
          SizedBox(
              width: double.maxFinite,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                  icon: Icon(Icons.add),
                  label: Text("Login", style: TextStyle(fontSize: 20)))),
        ],
      ),
    );
  }
}
