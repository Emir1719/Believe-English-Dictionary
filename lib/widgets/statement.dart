import 'package:believe_english_dictionary/blocks/word/word_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constant/style.dart';
import '../locator.dart';

class Statement extends StatelessWidget {
  Statement({super.key});
  final style = locator<ProjectStyle>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WordBloc, WordState>(
      builder: (context, state) {
        var loadedState = state as WordLoaded;
        var meanings = loadedState.word.meanings![0];

        return ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: meanings.definitions!.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: meanings.definitions![i].definition != null && meanings.definitions![i].example != null
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Definition: ", style: style.definition),
                            const SizedBox(height: 5),
                            Text(meanings.definitions![i].definition!, style: style.normal),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Examples: ", style: style.definition),
                            const SizedBox(height: 5),
                            Text(meanings.definitions![i].example!, style: style.normal),
                          ],
                        ),
                      ],
                    )
                  : const SizedBox(),
            );
          },
        );
      },
    );
  }
}
