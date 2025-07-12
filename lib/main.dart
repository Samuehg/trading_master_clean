import 'package:flutter/material.dart';
import 'package:trading_master/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TradingMaster',
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF00C4B4),
        scaffoldBackgroundColor: const Color(0xFF1A252F),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyMedium: TextStyle(fontSize: 16, color: const Color(0xFF8CC7B1)),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
