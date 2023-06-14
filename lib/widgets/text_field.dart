// ignore_for_file: must_be_immutable
import 'package:believe_english_dictionary/constant/color.dart';
import 'package:believe_english_dictionary/constant/style.dart';
import 'package:believe_english_dictionary/locator.dart';
import 'package:flutter/material.dart';

class ProjectTextField extends StatelessWidget {
  ProjectTextField({super.key, required this.controller});
  var color = locator<ProjectColor>();
  var style = locator<ProjectStyle>();
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(fontSize: 16),
      decoration: style.textInputDecor,
    );
  }
}
