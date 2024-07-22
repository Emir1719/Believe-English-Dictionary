import 'package:believe_english_dictionary/blocks/word/word_bloc.dart';
import 'package:believe_english_dictionary/pages/word_mean.dart';
import 'package:believe_english_dictionary/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/error.dart';

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
            child: BlocBuilder<WordBloc, WordState>(
              builder: (context, state) {
                if (state is WordInitial) {
                  return const SizedBox();
                }
                if (state is WordLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state is WordLoaded) {
                  return const WordMean();
                } else {
                  return const ProjectError();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
