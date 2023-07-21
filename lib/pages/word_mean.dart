import 'package:flutter/material.dart';
import '../widgets/part_of_speech.dart';
import '../widgets/statement.dart';
import '../widgets/word.dart';

class WordMean extends StatelessWidget {
  const WordMean({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      children: [
        Word(),
        PartOfSpeech(),
        //for (int i = 0; i < state.word.meanings![0].definitions!.length; i++)
        Statement(),
      ],
    );
  }
}
