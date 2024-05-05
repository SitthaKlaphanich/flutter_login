import 'package:flutter/material.dart';
import 'package:flutter_register_login_hivebox/screen/home.dart';
import 'package:flutter_register_login_hivebox/models/userprofile.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box box;

Future<void> main() async {
  await Hive.initFlutter();
  box = await Hive.openBox('box');
  Hive.registerAdapter(UserProfileAdapter());
  box.put(
      'userprofile',
      UserProfile(
          name: 'Sittha', email: '65030258@kmitl.ac.th', password: '12345'));

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
