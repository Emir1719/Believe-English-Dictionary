// ignore_for_file: must_be_immutable
import 'package:believe_english_dictionary/blocks/word/word_bloc.dart';
import 'package:believe_english_dictionary/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constant/color.dart';
import '../locator.dart';

class SearchWord extends StatelessWidget {
  SearchWord({super.key});
  final color = locator<ProjectColor>();
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var wordBloc = BlocProvider.of<WordBloc>(context);
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            child: ProjectTextField(
              controller: controller,
              onFieldSubmitted: (value) => submitWord(wordBloc),
            ),
          ),
          IconButton(
            onPressed: () {
              submitWord(wordBloc);
              //Klavyeyi kapatır:
              FocusManager.instance.primaryFocus?.unfocus();
            },
            icon: Icon(Icons.done, color: color.icon, size: 30),
          ),
        ],
      ),
    );
  }

  ///Kelime ekleme olayını blok yapısına ekler.
  void submitWord(WordBloc wordBloc) {
    if (controller.text.isNotEmpty) {
      wordBloc.add(FetchWord(word: controller.text));
    }
  }
}
