import 'package:believe_english_dictionary/constant/style.dart';
import 'package:believe_english_dictionary/widgets/text_field.dart';
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Think", style: style.word),
                    IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_voice_sharp, color: color.icon, size: 30)),
                  ],
                ),
                Row(
                  children: [
                    Text("Part Of Speech: ", style: style.speech),
                    Chip(label: const Text("noun"), backgroundColor: Colors.deepOrange, labelStyle: style.chip),
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
