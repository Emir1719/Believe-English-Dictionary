import 'package:believe_english_dictionary/locator.dart';
import 'package:believe_english_dictionary/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Believe English",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xffff0000),
          centerTitle: true,
          elevation: 2,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Home(),
    );
  }
}
