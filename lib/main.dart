import 'package:believe_english_dictionary/constant/theme.dart';
import 'package:believe_english_dictionary/locator.dart';
import 'package:believe_english_dictionary/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final project = ProjectTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Believe English",
      theme: project.theme,
      home: Home(),
    );
  }
}
