import 'package:flutter/material.dart';
import 'package:trashtrace/trashtrace.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 5, 79, 8)),
        primaryColor: const Color(0xFF4CAF50), // Green
        // Light Green

        scaffoldBackgroundColor: Colors.black,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 9, 91, 11),
              foregroundColor: Colors.white),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color.fromARGB(212, 3, 65, 5),
            foregroundColor: Colors.white)),
    home: const TrashHub(),
  ));
}
