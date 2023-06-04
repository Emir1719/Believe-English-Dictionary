import 'package:believe_english_dictionary/constant/color.dart';
import 'package:believe_english_dictionary/locator.dart';
import 'package:flutter/material.dart';

class ProjectTextField extends StatelessWidget {
  ProjectTextField({super.key});
  var color = locator<ProjectColor>();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 16),
      decoration: InputDecoration(
        isDense: true, // important line
        contentPadding: const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 15),
        hintText: "Search a word",
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: color.red),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: color.red,
          ),
        ),
      ),
    );
  }
}
