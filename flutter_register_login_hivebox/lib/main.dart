import 'package:flutter/material.dart';
import 'package:flutter_register_login_hivebox/screen/home.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box box;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen());
  }
}
