import 'package:believe_english_dictionary/widgets/text_field.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../locator.dart';

class SearchWord extends StatelessWidget {
  SearchWord({super.key});
  final color = locator<ProjectColor>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(child: ProjectTextField()),
          IconButton(onPressed: () {}, icon: Icon(Icons.done, color: color.icon, size: 30)),
        ],
      ),
    );
  }
}
