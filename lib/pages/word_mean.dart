import 'package:believe_english_dictionary/pages/word_detail.dart';
import 'package:flutter/material.dart';

import '../widgets/word.dart';

class WordMean extends StatelessWidget {
  const WordMean({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      children: [
        Word(),
        const WordDetailView(),
      ],
    );
  }
}
