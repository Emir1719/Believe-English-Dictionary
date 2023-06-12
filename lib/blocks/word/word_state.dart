part of 'word_bloc.dart';

@immutable
abstract class WordState {
  const WordState();
}

class WordInitial extends WordState {
  const WordInitial();
}

class WordLoading extends WordState {
  const WordLoading();
}

class WordLoaded extends WordState {
  final WordModel word;
  const WordLoaded({required this.word});
}

class WordError extends WordState {
  final String error;
  const WordError({required this.error});
}
