import 'package:audioplayers/audioplayers.dart';
import 'package:believe_english_dictionary/blocks/word/word_bloc.dart';
import 'package:believe_english_dictionary/data/word_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constant/color.dart';
import '../constant/style.dart';
import '../locator.dart';

class Word extends StatelessWidget {
  Word({super.key});
  final color = locator<ProjectColor>();
  final style = locator<ProjectStyle>();
  final repository = locator<WordRepository>();
  final audio = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WordBloc, WordState>(
      builder: (context, state) {
        var loadedState = state as WordLoaded;
        String wordName = loadedState.word.word!;
        String? wordAudio = repository.getAudio(loadedState.word);

        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(wordName, style: style.word),
              wordAudio != null
                  ? IconButton(
                      onPressed: () => playWord(wordAudio),
                      icon: Icon(Icons.keyboard_voice_sharp, color: color.icon, size: 30),
                    )
                  : const SizedBox()
            ],
          ),
        );
      },
    );
  }

  void playWord(String wordAudio) {
    try {
      audio.play(UrlSource(wordAudio));
    } catch (_) {}
  }
}
