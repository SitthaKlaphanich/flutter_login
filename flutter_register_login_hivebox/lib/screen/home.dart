import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register/Login"),
      ),
      body: Column(
        children: [
          SizedBox(
            child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label:
                    Text("Create an account", style: TextStyle(fontSize: 20))),
          ),
          SizedBox(
              child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("Login", style: TextStyle(fontSize: 20)))),
        ],
      ),
    );
  }
}
