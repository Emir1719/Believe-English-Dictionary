import 'package:believe_english_dictionary/widgets/part_of_speech.dart';
import 'package:believe_english_dictionary/widgets/search.dart';
import 'package:believe_english_dictionary/widgets/statement.dart';
import 'package:believe_english_dictionary/widgets/word.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Believe English")),
      body: Column(
        children: [
          SearchWord(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
