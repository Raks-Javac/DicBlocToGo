import 'package:dict_app/features/home/data/models/search_word_model.dart';

class AppConstants {
  static const double buttonHeight = 50;
  static List<SearchWordModelResponse> recentWordList = [
    SearchWordModelResponse(
        word: "",
        phonetic: "",
        meanings: [
          Meaning(partOfSpeech: "", definitions: [
            Definition(
                definition: "", example: "", synonyms: [""], antonyms: [""])
          ])
        ])
  ];
}
