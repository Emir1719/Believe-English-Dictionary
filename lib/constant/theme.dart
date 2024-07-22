import 'package:flutter/material.dart';

import '../locator.dart';
import 'color.dart';

final _color = locator<ProjectColor>();

class ProjectTheme {
  var theme = ThemeData(
    primarySwatch: Colors.red,
    appBarTheme: AppBarTheme(
      color: _color.red,
      centerTitle: true,
      elevation: 2,
      foregroundColor: Colors.white,
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        wordSpacing: 1.1,
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}
