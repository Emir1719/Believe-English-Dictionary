part of 'word_bloc.dart';

@immutable
abstract class WordEvent {}

///Arama çubuğuna girilen kelimeyi getirecek.
class FetchWord extends WordEvent {
  final String word;
  FetchWord({required this.word});
}
