import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../constant/style.dart';
import '../locator.dart';

class Word extends StatelessWidget {
  Word({super.key});
  final color = locator<ProjectColor>();
  final style = locator<ProjectStyle>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Think", style: style.word),
        IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_voice_sharp, color: color.icon, size: 30)),
      ],
    );
  }
}
