import 'package:flutter/material.dart';
import 'login.dart';
import 'dashboard/home.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/dashboard': (context) => const HomePage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
