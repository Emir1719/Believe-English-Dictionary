import 'package:believe_english_dictionary/constant/style.dart';
import 'package:believe_english_dictionary/widgets/part_of_speech.dart';
import 'package:believe_english_dictionary/widgets/search.dart';
import 'package:believe_english_dictionary/widgets/statement.dart';
import 'package:believe_english_dictionary/widgets/word.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../locator.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final color = locator<ProjectColor>();
  final style = locator<ProjectStyle>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Believe English")),
      body: Column(
        children: [
          SearchWord(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(15),
              children: [
                Word(),
                PartOfSpeech(),
                Statement(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
