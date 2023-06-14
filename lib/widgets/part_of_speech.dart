import 'package:believe_english_dictionary/blocks/word/word_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constant/color.dart';
import '../constant/style.dart';
import '../locator.dart';

class PartOfSpeech extends StatelessWidget {
  PartOfSpeech({super.key});
  final color = locator<ProjectColor>();
  final style = locator<ProjectStyle>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WordBloc, WordState>(
      builder: (context, state) {
        var loadedState = state as WordLoaded;
        return Row(
          children: [
            Text("Part Of Speech: ", style: style.speech),
            Chip(label: const Text("noun"), backgroundColor: color.chip, labelStyle: style.chip),
          ],
        );
      },
    );
  }
}
