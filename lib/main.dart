import 'package:flutter/material.dart';
import 'package:shopping_fruits/cart_screen.dart';
import 'package:shopping_fruits/home_screen.dart';
import 'package:shopping_fruits/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes:{
        '/':  (context) =>  LoginScreen(),
        '/home':  (context) =>  HomePage(),
        '/cart':(context) =>  CartPage(),
      },
    );
  }
}

