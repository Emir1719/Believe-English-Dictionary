import 'package:believe_english_dictionary/constant/color.dart';
import 'package:believe_english_dictionary/locator.dart';
import 'package:flutter/material.dart';

final _color = locator<ProjectColor>();

class ProjectStyle {
  var word = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  var chip = const TextStyle(
    fontSize: 16,
    color: Colors.white,
  );

  var speech = const TextStyle(
    fontSize: 18,
  );

  var definition = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  var normal = const TextStyle(
    fontSize: 16,
  );

  var textInputDecor = InputDecoration(
    isDense: true, // important line
    contentPadding: const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 15),
    hintText: "Search a word",
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: _color.red),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: _color.red),
    ),
  );
}
