import 'package:believe_english_dictionary/blocks/word/word_bloc.dart';
import 'package:believe_english_dictionary/models/words.dart';
import 'package:believe_english_dictionary/widgets/part_of_speech.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WordDetailView extends StatelessWidget {
  const WordDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WordBloc, WordState>(
      builder: (context, state) {
        final word = (state as WordLoaded).word;

        return Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount: word.meanings?.length ?? 0,
            itemBuilder: (context, index) {
              if (word.meanings == null) {
                return const SizedBox();
              }

              var meaning = word.meanings![index];

              return Column(
                children: [
                  PartOfSpeech(label: meaning.partOfSpeech ?? ""),
                  ...meaning.definitions!.map((Definition definitions) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _definition(definitions.definition),
                        const SizedBox(height: 6),
                        _example(definitions.example),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
                          child: Divider(),
                        ),
                      ],
                    );
                  }),
                ],
              );
            },
          ),
        );
      },
    );
  }

  Widget _definition(String? value) {
    const space = SizedBox(height: 8);

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Definition:",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          space,
          Text(
            value?.trim() ?? "",
            style: const TextStyle(fontSize: 15),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  Widget _example(String? value) {
    const space = SizedBox(height: 8);

    if (value == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Example:",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.red,
            ),
          ),
          space,
          Text(value, style: const TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
