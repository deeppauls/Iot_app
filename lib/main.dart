import 'package:flutter/material.dart';
import 'package:iot_app/screens/home_screen.dart';
import 'package:iot_app/screens/product_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.teal,
      ),
      initialRoute: 'home',
      routes: {
        'home': (context) => HomeScreen(),
        'detail': (context) => ProductDetailScreen(),
      },
    );
  }
}
