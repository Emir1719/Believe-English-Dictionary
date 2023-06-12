import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../models/words.dart';
part 'word_event.dart';
part 'word_state.dart';

class WordBloc extends Bloc<WordEvent, WordState> {
  WordBloc() : super(const WordInitial()) {
    on<FetchWord>((event, emit) {
      emit(const WordLoading());
      try {
        List<WordModel> words;
      } catch (e) {
        WordError(error: e.toString());
      }
    });
  }
}
