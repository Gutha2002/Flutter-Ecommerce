import 'package:flutter/material.dart';
import 'package:mediart/screens/auth_page.dart';
import 'package:mediart/screens/cart_page.dart';
import 'package:mediart/screens/home_page.dart';
import 'package:mediart/screens/order_history.dart';
import 'package:mediart/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomeScreen(),
        '/orderHistory': (context) => OrderHistoryPage(),
        '/profile': (context) => ProfilePage(),
        '/cart': (context) => MainScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),
    );
  }
}
