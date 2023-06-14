import 'package:believe_english_dictionary/data/word_api_client.dart';
import 'package:believe_english_dictionary/models/words.dart';

class WordRepository {
  final _wordApi = WordApiClient();

  Future<WordModel> getWord(String word) async {
    return await _wordApi.getWord(word);
  }
}
