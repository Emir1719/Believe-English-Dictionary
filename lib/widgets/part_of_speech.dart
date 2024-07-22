import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../constant/style.dart';
import '../locator.dart';

class PartOfSpeech extends StatelessWidget {
  PartOfSpeech({super.key, required this.label});
  final color = locator<ProjectColor>();
  final style = locator<ProjectStyle>();
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Part Of Speech: ", style: style.speech),
        Chip(
          label: Text(label),
          backgroundColor: color.chip,
          labelStyle: style.chip,
          side: const BorderSide(style: BorderStyle.none),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ],
    );
  }
}
