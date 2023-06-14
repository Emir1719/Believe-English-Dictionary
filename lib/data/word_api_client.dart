// ignore_for_file: body_might_complete_normally_nullable
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

  String? getAudio(WordModel wordModel) {
    List<Phonetic>? wordPhonetics = wordModel.phonetics;

    if (wordPhonetics!.isEmpty) {
      return null;
    }

    for (var item in wordPhonetics) {
      if (item.audio!.isNotEmpty) {
        return item.audio;
      }
    }
    return null;
  }

  /*Future<String?> getAudio(String word) async {
    WordModel wordModel = await getWord(word);
    List<Phonetic>? wordPhonetics = wordModel.phonetics;

    if (wordPhonetics!.isEmpty) {
      return null;
    }

    for (var item in wordPhonetics) {
      if (item.audio!.isNotEmpty) {
        //print(item.audio);
        return item.audio;
      }
    }
  }*/
}
