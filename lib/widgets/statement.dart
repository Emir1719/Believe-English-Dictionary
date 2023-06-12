import 'package:flutter/material.dart';

import '../constant/style.dart';
import '../locator.dart';

class Statement extends StatelessWidget {
  Statement({super.key});
  final style = locator<ProjectStyle>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Definition: ", style: style.definition),
            const SizedBox(height: 5),
            Text("An act of thinking; consideration (of something).", style: style.normal),
          ],
        ),
        const SizedBox(height: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Examples: ", style: style.definition),
            const SizedBox(height: 5),
            Text("I'll have a think about that and let you know.", style: style.normal),
          ],
        ),
      ],
    );
  }
}
