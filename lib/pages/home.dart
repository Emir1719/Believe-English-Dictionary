import 'package:believe_english_dictionary/constant/style.dart';
import 'package:believe_english_dictionary/widgets/part_of_speech.dart';
import 'package:believe_english_dictionary/widgets/text_field.dart';
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
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(child: ProjectTextField()),
                IconButton(onPressed: () {}, icon: Icon(Icons.done, color: color.icon, size: 30)),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(15),
              children: [
                Word(),
                PartOfSpeech(),
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
            ),
          ),
        ],
      ),
    );
  }
}
