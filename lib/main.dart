import 'package:drawer/pages/delete.dart';
import 'package:drawer/pages/home.dart';
import 'package:drawer/pages/profile.dart';
import 'package:drawer/pages/setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/HomePage': (context) => const HomePage(),
        '/SettingPage': (context) => const SettingPage(),
        '/ProfilePage': (context) => const ProfilePage(),
        '/DeletePage': (context) => const DeletePage()
      },
    );
  }
}
