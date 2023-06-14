import 'package:believe_english_dictionary/data/word_repository.dart';
import 'package:believe_english_dictionary/locator.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../models/words.dart';
part 'word_event.dart';
part 'word_state.dart';

class WordBloc extends Bloc<WordEvent, WordState> {
  var repository = locator<WordRepository>();

  WordBloc() : super(const WordInitial()) {
    on<FetchWord>((event, emit) async {
      emit(const WordLoading());
      try {
        WordModel word = await repository.getWord(event.word);
        emit(WordLoaded(word: word));
      } catch (e) {
        WordError(error: e.toString());
      }
    });
  }
}
