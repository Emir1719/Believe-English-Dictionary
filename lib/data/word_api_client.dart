import 'package:believe_english_dictionary/models/words.dart';
import 'package:dio/dio.dart';

class WordApiClient {
  static const String _url = "https://api.dictionaryapi.dev/api/v2/entries/en/";

  Future<WordModel> getWord(String word) async {
    //Örneğin word=feel olursa https://api.dictionaryapi.dev/api/v2/entries/en/feel olacak.
    String wordUrl = _url + word.trim();
    var result = await Dio().get(wordUrl);
    var wordModel = WordModel.fromJson(result.data[0]);
    return wordModel;
  }
}
