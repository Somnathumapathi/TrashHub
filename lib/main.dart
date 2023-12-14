import 'package:flutter/material.dart';
import 'package:trashtrace/trashtrace.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xFF4CAF50), // Green
      // Light Green
      scaffoldBackgroundColor: Colors.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 9, 91, 11),
        ),
      ),
    ),
    home: const TrashHub(),
  ));
}
